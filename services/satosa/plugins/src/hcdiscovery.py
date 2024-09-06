"""
"""

from satosa.micro_services.base import RequestMicroService
from satosa.logging_util import satosa_logging
from satosa.backends.saml2 import SAMLBackend

import logging
import os

logger = logging.getLogger(__name__)


class HumanitiesCommonsDiscoverySelector(RequestMicroService):
    """
    """
    KEY_SP_TO_DS_MAP = 'sp_to_ds_map'
    KEY_SAML_DISCOVERY_SERVICE_URL = SAMLBackend.KEY_SAML_DISCOVERY_SERVICE_URL

    def __init__(self, config, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.config = config

    def process(self, context, data):
        config = self.config

        satosa_logging(logger, logging.DEBUG,
                       "Using configuration {}".format(config), context.state)

        satosa_logging(logger, logging.DEBUG,
                       "Context is {}".format(context), context.state)
        
        satosa_logging(logger, logging.DEBUG,
                       "Data is {}".format(data), context.state)
        
        env_keys = ";".join( list( os.environ.keys() ) )
        satosa_logging(logger, logging.DEBUG,
                       "Env is {}".format(os.environ), context.state)
        

        sp_to_ds_map = config[self.KEY_SP_TO_DS_MAP]

        # Find the entityID for the SP that initiated the flow
        try:
            sp_entity_id = context.state.state_dict['SATOSA_BASE']['requester']
        except KeyError:
            msg = "Unable to determine the entityID for the SP requester"
            satosa_logging(logger, logging.ERROR, msg, context.state)
            return super().process(context, data)

        msg = "entityID for the SP requester is {}".format(sp_entity_id)
        satosa_logging(logger, logging.INFO, msg, context.state)

        # Use the configured mapping from service provider to discovery
        # service to set the discovery service for the SAML backend to use,
        # but only if it is not already set.
        if sp_entity_id in sp_to_ds_map:
            disco_url = context.get_decoration(self.KEY_SAML_DISCOVERY_SERVICE_URL)
            if disco_url:
                msg = "Discovery service URL already set to {}".format(disco_url)
            else:
                disco_url = sp_to_ds_map[sp_entity_id]
                context.decorate(self.KEY_SAML_DISCOVERY_SERVICE_URL, disco_url)
                msg = "Set discovery service URL to {}".format(disco_url)
        else:
            msg = "Did not find SP entityID in mapping {}".format(sp_to_ds_map)

        satosa_logging(logger, logging.DEBUG, msg, context.state)

        return super().process(context, data)
