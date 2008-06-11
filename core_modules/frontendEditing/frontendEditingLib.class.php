<?php
/**
 * Defines some basic constants for the frontend editing. The class also offers static methods which can be used to create
 * links to the frontend editing.
 * 
 * @author Kaelin Thomas <thomas.kaelin@comvation.com>
 * @version 1.0
 */
class frontendEditingLib {
	/**
	 * Path to the parent-directory of this file, relative to contrexx-root.
	 */
	const FRONTENDEDITING_PATH = 'core_modules/frontendEditing/';
	
	/**
	 * Path to the prototype-library, relative to contrexx-root.
	 */
	const PROTOTYPE_PATH = 'lib/javascript/prototype.js';
	
	/**
	 * Path to the scriptaculous-library, relative to contrexx-root.
	 */
	const SCRIPTACULOUS_PATH = 'lib/javascript/scriptaculous/scriptaculous.js';
	
	/**
	 * Path to the admin-file, relative to contrexx-root.
	 */
	const ADMIN_PATH = 'cadmin/index.php';
	
	/**
	 * ID of the access key which should be used for frontend editing.
	 */
	const ACCESS_KEY = 9;
	
	/**
	 * Name of the SESSION-Field which stores to visibility-status.
	 */
	const SESSION_TOOLBAR_FIELD = 'frontendEditing_ToolbarVisibility';
	
	/**
	 * Array containing all disallowed sections.
	 */
	protected static $arrDisallowedSections = array(0	=>	'login');
	
	/**
	 * Array containg all sections without a backend-part.
	 */
	protected static $arrSectionsWithoutBackend = array(	0	=>	'home',
															1	=>	'login',
															2	=>	'sitemap',
															3	=>	'imprint',
															4	=>	'agb',
															5	=>	'privacy',
															6	=>	'error',
															7	=>	'ids',
															8	=>	'search');
											

				
	/**
	 * Returns html-code with all include-statements.
	 *
	 * @return html-code with all include-statements
	 */
	public static function getIncludeCode() { 	
		$strFeInclude =		'<style type="text/css">@import url('.frontendEditingLib::FRONTENDEDITING_PATH.'css/style.css) all;</style>'."\n";
		$strFeInclude .=	'<!--[if IE 6]>'."\n";
   		$strFeInclude .=	'<style type="text/css">@import url('.frontendEditingLib::FRONTENDEDITING_PATH.'css/style_ie6.css);</style>'."\n";
  		$strFeInclude .=	'<![endif]-->'."\n";
		$strFeInclude .= 	'<script src="'.frontendEditingLib::PROTOTYPE_PATH.'" type="text/javascript"></script>'."\n";
		$strFeInclude .= 	'<script src="'.frontendEditingLib::SCRIPTACULOUS_PATH.'" type="text/javascript"></script>'."\n";
		$strFeInclude .= 	'<script src="'.frontendEditingLib::FRONTENDEDITING_PATH.'js/frontEditing.js" type="text/javascript"></script>'."\n";
		
		return $strFeInclude;
	}
	
	
	/**
	 * Returns html-code for a login-link.
	 *
	 * @return html-code for a login-link
	 */
	public static function getLinkCode() {
		global $_CORELANG;
				
		return '<a href="javascript:void(0)" onclick="fe_setToolbarVisibility(true); fe_loadToolbar();" accesskey="'.frontendEditingLib::ACCESS_KEY.'" title="[ALT + '.frontendEditingLib::ACCESS_KEY.'] '.$_CORELANG['TXT_FRONTEND_EDITING_LOGIN'].'">'.$_CORELANG['TXT_FRONTEND_EDITING_LOGIN'].'</a>';
	}
	
	/**
	 * Returns html-code with needed content-elements.
	 *
	 * @return html-code with needed content-elements.
	 */
	public static function getContentCode($pageId, $section, $command) {
		//Is user logged in?
		$userIsLoggedIn = 'false';
		$objCurrentUser = FWUser::getFWUserObject();
		if ($objCurrentUser->objUser->login()) {
			$userIsLoggedIn = 'true';
		}
		
		//Should toolbar be shown?
		$showToolbar = 'true';
		if($_SESSION[frontendEditingLib::SESSION_TOOLBAR_FIELD] == false) {
			$showToolbar = 'false';
		}
				
		$strFeContent =		'<script type="text/javascript">'."\n";
		$strFeContent .=	'	var fe_userIsLoggedIn = '.$userIsLoggedIn.';'."\n";
		$strFeContent .=	'	var fe_userWantsToolbar = '.$showToolbar.';'."\n";
		$strFeContent .=	'	var fe_pageId = \''.$pageId.'\';'."\n";
		$strFeContent .=	'	var fe_pageSection = \''.$section.'\';'."\n";
		$strFeContent .=	'	var fe_pageCommand = \''.$command.'\';'."\n";
		$strFeContent .=	'</script>'."\n";
		$strFeContent .=	'<div id="fe_Container" style="display: none;"></div>'."\n";
		$strFeContent .=	'<div id="fe_Loader" style="display: none;"></div>'."\n";
		
		return $strFeContent;
	}
}

?>