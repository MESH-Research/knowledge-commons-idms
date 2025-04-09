<!--<div class="container">-->
<div class="row">

	<div class="ten columns align-self-center">
		<!--<div class="section">-->
			<div class="container_incommon_top" style="text-align:center;">
				<p class="last_login_text">You recently logged into Humanities Commons using:</p>

				<div id="idpSelect" style="display:inline-block;"></div>
				<script type="text/javascript">
					var humanitiesCommonsHiddenIdPs = [
						'<?php echo GOOGLE_GATEWAY; ?>',
						'<?php echo TWITTER_GATEWAY; ?>',
						'<?php echo HC_GATEWAY; ?>',
						'<?php echo LEGACY_MLA_GATEWAY; ?>',
						'<?php echo HC_ACCOUNT_CREATE_GATEWAY; ?>',
					];
					var humanitiesCommonsPreferredIdPs = [ 
						'<?php echo GOOGLE_GATEWAY; ?>',
						'<?php echo TWITTER_GATEWAY; ?>',
						'<?php echo HC_GATEWAY; ?>',
						'<?php echo LEGACY_MLA_GATEWAY; ?>',
					];

					var HC_DOMAIN = '<?php echo HC_DOMAIN; ?>';
				</script>
				<script src="/lib/shibboleth-embedded-ds-1.2.0/json2.js?v101617" type="text/javascript" language="javascript"></script>
				<script src="/lib/shibboleth-embedded-ds-1.2.0/typeahead.js?v101617" type="text/javascript" language="javascript"></script>
				<script src="/lib/shibboleth-embedded-ds-1.2.0/idpselect_languages.js?v101617" type="text/javascript" language="javascript"></script>
				<script src="/lib/shibboleth-embedded-ds-1.2.0/idpselect_config.js?v101617" type="text/javascript" language="javascript"></script>
				<script src="/lib/shibboleth-embedded-ds-1.2.0/idpselect.js?v101617" type="text/javascript" language="javascript"></script>
				<noscript>
					<!-- If you need to care about non javascript browsers you will need to
					     generate a hyperlink to a non-js DS.

					   To build you will need:
					   - URL:  The base URL of the DS you use
					   - EI: Your entityId, URLencoded.  You can get this from the line that
					   this page is called with.
					   - RET: Your return address dlib-adidp.ucs.ed.ac.uk. Again you can get
					   this from the page this is called with, but beware of the
					   target%3Dcookie%253A5269905f bit..

					   < href=${URL}?entityID=${EI}&return=${RET}
					-->

					Your Browser does not support javascript. Please use
					<a href="http://federation.org/DS/DS?entityID=https%3A%2F%2FyourentityId.edu.edu%2Fshibboleth&return=https%3A%2F%2Fyourreturn.edu%2FShibboleth.sso%2FDS%3FSAMLDS%3D1%26target%3Dhttps%3A%2F%2Fyourreturn.edu%2F">this link</a>.

				</noscript>

                            <!--  <div class="button_container"><a href="#">< Back</a></div> -->
                              <p class="linked_login_container">Or <a href="#">log in another way</a></p>
			</div>

		<!-- </div> --> <!-- /.section -->
	</div> <!-- /.six.columns -->
</div> <!-- /.row -->
<!--</div> --><!-- /.container -->
