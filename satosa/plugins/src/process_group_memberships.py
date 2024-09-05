"""
SATOSA microservice to process group memberships pulled from multiple
stems in the LDAP directory, union them, and then filter them.
"""

from satosa.micro_services.base import ResponseMicroService
from satosa.logging_util import satosa_logging

import logging
import re

logger = logging.getLogger(__name__)

# COU names in COmanage Registry. This will be used to construct
# a regular expression to filter group members against.
COUS = [
    "ASEEES",
    "UP",
    "AJS",
    "ARLISNA",
    "CAA",
    "HASTAC",
    "HC",
    "HUB",
    "MLA",
    "MSU",
    "SAH",
    "SOCSI",
    "STEM",
    "DHRI",
    "STEMEDPLUS",
    ]

# To exlcude a COU from being used in the filter add it to the list below.
COU_EXCLUDE = [
    ]

class ProcessGroupMemberships(ResponseMicroService):
    """
    """

    def __init__(self, config, *args, **kwargs):
        super().__init__(*args, **kwargs)

        # Construct the regular expression pattern from the list of
        # societies that will be used to filter the group memberships.
        cous = list(set(COUS) - set(COU_EXCLUDE))
        patterns = ["^CO:COU:{}:members:active".format(s) for s in cous]
        pattern = "^Humanities Commons:|" + "|".join(patterns)

        self.pat = re.compile(pattern)

        # We also need a regular expression pattern to filter the list of
        # missing groups since there are groups we expect to be missing.
        template = "^Humanities Commons:{}:members_{}"
        patterns = [template.format(s, s) for s in cous]
        pattern = "|".join(patterns)
        pattern += "|^Humanities Commons:members"

        self.missing_pat = re.compile(pattern)

    def process(self, context, data):
        """
        """
        self.context = context

        ismemberof = data.attributes.get("ismemberof", [])
        ismemberof.sort()
        logger.debug("ismemberof is {}".format(ismemberof))

        ismemberof2 = data.attributes.get("ismemberof2", [])
        ismemberof2.sort()
        logger.debug("ismemberof2 is {}".format(ismemberof2))

        # Union
        union = list(set().union(ismemberof, ismemberof2))
        union.sort()
        logger.debug("union is {}".format(union))

        # Filter
        filtered = [s for s in union if self.pat.search(s)]
        filtered.sort()
        logger.debug("filtered is {}".format(filtered))

        data.attributes['ismemberof'] = filtered

        # Look for any groups in the filtered list that do not appear in
        # ismemberof2 and write a WARNING.
        missing = list(set(filtered) - set(ismemberof2))

        # We filter the list of missing groups to exclude groups that we
        # expect to be missing.
        missing = [s for s in missing if not self.missing_pat.search(s)]
        missing.sort()

        if missing:
            msg = "MISSING GROUPS: these groups were not found: {}"
            msg = msg.format(missing)
            logger.warning(msg)

        msg = "Returning data.attributes {}".format(str(data.attributes))
        satosa_logging(logger, logging.DEBUG, msg, context.state)
        return super().process(context, data)
