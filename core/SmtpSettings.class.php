<?php
class SmtpSettings {
	/**
     * Get details of a specified SMTP account
     *
     * Returns the details of the SMTP account specified by $accountId.
     * If $accountId is either FALSE or not a valid account ID then this
     * method will return FALSE.
     * Only if $getPassword is set to TRUE will the password of the specified SMTP
     * account be returned.
     * @access private
     * @global object $objDatabase
     * @param integer $accountId
     * @param boolean $getPassword
     * @return mixed Array with account details if $accountId is a valid account ID, otherwise FALSE
     */
    function _getSmtpAccount($accountId = 0, $getPassword = false)
    {
    	global $objDatabase;

    	if ($accountId && ($objSmtp = $objDatabase->SelectLimit('SELECT `name`, `hostname`, `port`, `username`, '.($getPassword ? '`password`' : 'CHAR_LENGTH(`password`) AS \'password\'').' FROM `'.DBPREFIX.'settings_smtp` WHERE `id` = '.$accountId, 1)) !== false && $objSmtp->RecordCount() == 1) {
    		return array(
    			'name'		=> $objSmtp->fields['name'],
    			'hostname'	=> $objSmtp->fields['hostname'],
    			'port'		=> $objSmtp->fields['port'],
    			'username'	=> $objSmtp->fields['username'],
    			'password'	=> $objSmtp->fields['password']
    		);
    	} else {
    		return false;
    	}
    }

    /**
     * Get a list of available SMTP accounts
     *
     * Returns an array with all available SMTP accounts. This includes
     * on the one hand the self defined accounts and on the other hand the
     * local system account defined in the php.ini.
     * @global object $objDatabase
     * @see getSystemSmtpAccount()
     * @return array Array with SMTP accounts
     */
    function getSmtpAccounts()
    {
    	global $objDatabase;

    	$arrSmtp[0] = $this->getSystemSmtpAccount();

    	$objSmtp = $objDatabase->Execute('SELECT `id`, `name`, `hostname`, `username` FROM `'.DBPREFIX.'settings_smtp` ORDER BY `name`');
    	if ($objSmtp !== false) {
    		while (!$objSmtp->EOF) {
    			$arrSmtp[$objSmtp->fields['id']] = array(
    				'name'		=> $objSmtp->fields['name'],
    				'hostname'	=> $objSmtp->fields['hostname'],
    				'username'	=> $objSmtp->fields['username']
    			);
    			$objSmtp->MoveNext();
    		}
    	}

    	return $arrSmtp;
    }

        /**
     * Get konfigured system SMTP account
     *
     * Returns the local konfigured SMTP account of the current system.
     * @global array $_CORELANG
     * @return array Array with the SMTP account details
     */
    function getSystemSmtpAccount()
    {
    	global $_CORELANG;

    	return array(
    		'name'		=> $_CORELANG['TXT_SETTINGS_SERVER_CONFIGURATION'],
    		'hostname'	=> $_CORELANG['TXT_SETTINGS_SMTP_SERVER_DAEMON'],
    		'port'		=> '',
    		'username'	=> '',
    		'password'	=> '',
    		'system'	=> 1
    	);
    }

    function _updateSmtpAccount($id, $arrSmtp)
    {
		global $objDatabase;

		$arrUpdateAttributes = array();
		$arrCurrentSmtp = $this->_getSmtpAccount($id);

		if ($arrCurrentSmtp['name'] != $arrSmtp['name']) {
			array_push($arrUpdateAttributes, "`name` = '".addslashes($arrSmtp['name'])."'");
		}
		if ($arrCurrentSmtp['hostname'] != $arrSmtp['hostname']) {
			array_push($arrUpdateAttributes, "`hostname` = '".addslashes($arrSmtp['hostname'])."'");
		}
		if ($arrCurrentSmtp['port'] != $arrSmtp['port']) {
			array_push($arrUpdateAttributes, '`port`='.$arrSmtp['port']);
		}
		if ($arrCurrentSmtp['username'] != $arrSmtp['username']) {
			array_push($arrUpdateAttributes, "`username`='".addslashes($arrSmtp['username'])."'");
		}
		if (empty($arrSmtp['password']) || ($pass = trim($arrSmtp['password'])) && !empty($pass)) {
			array_push($arrUpdateAttributes, "`password`='".addslashes(trim($arrSmtp['password']))."'");
		}

		if (count($arrUpdateAttributes) > 0) {
			if ($objDatabase->Execute("UPDATE `".DBPREFIX."settings_smtp` SET ".implode(', ', $arrUpdateAttributes)." WHERE `id` = ".$id) === false) {
				return false;
			}
		}

		return true;
    }

    function _addSmtpAccount($arrSmtp)
    {
		global $objDatabase;

		if ($objDatabase->Execute("INSERT INTO `".DBPREFIX."settings_smtp` (`name`, `hostname`, `port`, `username`, `password`) VALUES ('".addslashes($arrSmtp['name'])."', '".addslashes($arrSmtp['hostname'])."', ".$arrSmtp['port'].", '".addslashes($arrSmtp['username'])."', '".addslashes($arrSmtp['password'])."')") !== false) {
			return true;
		} else {
			return false;
		}
    }

    /**
     * Check for unique SMTP account name
     *
     * This method checks if the account name specified by $name is unique within
     * the system.
     * @access private
     * @param string $name
     * @param integer $id of a SMTP account
     * @return boolean
     */
    function _isUniqueSmtpAccountName($name, $id = 0)
    {
    	global $objDatabase;

    	$objSmtp = $objDatabase->SelectLimit("SELECT 1 FROM `".DBPREFIX."settings_smtp` WHERE `name` = '".addslashes($name)."' AND `id` !=".$id, 1);
    	if ($objSmtp !== false && $objSmtp->RecordCount() == 0) {
    		return true;
    	} else {
    		return false;
    	}
    }

    function getSmtpAccountMenu($selectedAccountId, $attrs)
    {
    	$menu = '<select'.(!empty($attrs) ? ' '.$attrs : '').'>';
    	foreach ($this->getSmtpAccounts() as $id => $arrSmtp) {
    		$menu .= '<option value="'.$id.'"'.($selectedAccountId == $id ? ' selected="selected"' : '').'>'.htmlentities($arrSmtp['name'], ENT_QUOTES, CONTREXX_CHARSET).'</option>';
    	}
    	$menu .= '</select>';

    	return $menu;
    }

    /**
     * Get details of a SMTP account
     *
     * Returns the details of the SMTP account specified by $accountId.
     * If $accountId is either FALSE or not a valid account ID then FALSE will
     * be returned instead.
     * @param integer $accountId
     * @see _getSmtpAccount()
     * @return mixed Array with the details of the requested account or FALSE if the account doesn't exist
     */
    function getSmtpAccount($accountId = 0)
    {
    	if ($accountId && ($arrSmtp = $this->_getSmtpAccount($accountId, true)) !== false) {
    		return $arrSmtp;
    	} else {
    		return false;
    	}
    }
}
?>
