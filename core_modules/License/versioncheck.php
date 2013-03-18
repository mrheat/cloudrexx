<?php
/*ini_set('display_errors', 1);
error_reporting(E_ALL);
echo '<pre>';//*/

global $_CONFIG, $_FTPCONFIG, $_DBCONFIG, $sessionObj, $objInit, $objDatabase, $documentRoot;

function loadFile($cl, $file, $class) {
    if (!class_exists($class)) {
        return $cl->loadFile($file);
    }
}

// when included in installer, this is set
if (!isset($documentRoot)) {
    $documentRoot = dirname(dirname(dirname(__FILE__)));
}

// load requirements
if (!class_exists("DBG")) {
    require_once($documentRoot.'/lib/FRAMEWORK/DBG/DBG.php');
}
require_once($documentRoot.'/config/settings.php');              // needed for configuration.php
require_once($documentRoot.'/config/configuration.php');         // needed for API

$customizing = null;
if (isset($_CONFIG['useCustomizings']) && $_CONFIG['useCustomizings'] == 'on') {
// TODO: webinstaller check: has ASCMS_CUSTOMIZING_PATH already been defined in the installation process?
    $customizing = ASCMS_CUSTOMIZING_PATH;
}

require_once($documentRoot.'/core/ClassLoader/ClassLoader.class.php');
$cl = new \Cx\Core\ClassLoader\ClassLoader($documentRoot, false, $customizing);

loadFile($cl, $documentRoot.'/core/Env.class.php', 'Env');               // needed for FileSystem
Env::set('ClassLoader', $cl);
Env::set('config', $_CONFIG);
Env::set('ftpConfig', $_FTPCONFIG);

loadFile($cl, $documentRoot.'/core/API.php',                                         'HTML_Template_Sigma'); // needed for getDatabaseObject()
loadFile($cl, $documentRoot.'/lib/FRAMEWORK/User/User_Setting_Mail.class.php',       'User_Setting_Mail');
loadFile($cl, $documentRoot.'/lib/FRAMEWORK/User/User_Setting.class.php',            'User_Setting');
loadFile($cl, $documentRoot.'/lib/FRAMEWORK/User/User_Profile_Attribute.class.php',  'User_Profile_Attribute');
loadFile($cl, $documentRoot.'/lib/FRAMEWORK/User/User_Profile.class.php',            'User_Profile');
loadFile($cl, $documentRoot.'/lib/FRAMEWORK/User/UserGroup.class.php',               'UserGroup');
loadFile($cl, $documentRoot.'/lib/FRAMEWORK/User/User.class.php',                    'User');
loadFile($cl, $documentRoot.'/lib/FRAMEWORK/Language.class.php',                     'FWLanguage');
loadFile($cl, $documentRoot.'/lib/FRAMEWORK/FWUser.class.php',                       'FWUser');
loadFile($cl, $documentRoot.'/lib/PEAR/HTTP/Request2.php',                           'HTTP_Request2');
loadFile($cl, $documentRoot.'/core/Init.class.php',                                  'InitCMS');
loadFile($cl, $documentRoot.'/core/settings.class.php',                              'settingsManager');
loadFile($cl, $documentRoot.'/core/session.class.php',                               'cmsSession');

$objDatabase = getDatabaseObject($strErrMessage, true);
$objInit = new InitCMS('backend', null);

$objInit->_initBackendLanguage();
$_LANGID = $objInit->getBackendLangId();
define('LANG_ID', $_LANGID);

// load interface texts, might be used by the license system in case of communication errors
$_CORELANG = $objInit->loadLanguageData('core');

// Init user
if (!isset($sessionObj) || !is_object($sessionObj)) $sessionObj = new \cmsSession();
$objUser = \FWUser::getFWUserObject()->objUser;
$objUser->login();

// update license, return "false" if no connection to license server could be established
$license = \Cx\Core_Modules\License\License::getCached($_CONFIG, $objDatabase);
$licenseCommunicator = \Cx\Core_Modules\License\LicenseCommunicator::getInstance($_CONFIG);
try {
    $licenseCommunicator->update(
        $license,
        $_CONFIG,
        (isset($_GET['force']) && $_GET['force'] == 'true'),
        false,
        $_CORELANG,
        (isset($_POST['response']) && $objUser->getAdminStatus() ? contrexx_input2raw($_POST['response']) : '')
    );
} catch (\Exception $e) {
    $license->check();
    if (!isset($_GET['nosave']) || $_GET['nosave'] != 'true') {
        $license->save(new \settingsManager(), $objDatabase);
    }
    if (!isset($_GET['silent']) || $_GET['silent'] != 'true') {
        echo "false";
    }
    return;
}
$license->check();
if (!isset($_GET['nosave']) || $_GET['nosave'] != 'true') {
    $license->save(new \settingsManager(), $objDatabase);
}

if (!$objUser->login(true)) {
    // do not use die() here, or installer will not show success page
    return;
}

if (isset($_GET['silent']) && $_GET['silent'] == 'true') {
    return true;
}

// show info
$message = $license->getMessage(false, \FWLanguage::getLanguageCodeById(LANG_ID), $_CORELANG);
echo json_encode(array(
    'status' => contrexx_raw2xhtml($license->getState()),
    'link' => contrexx_raw2xhtml($message->getLink()),
    'target' => contrexx_raw2xhtml($message->getLinkTarget()),
    'text' => contrexx_raw2xhtml($message->getText()),
    'class' => contrexx_raw2xhtml($message->getType()),
));
