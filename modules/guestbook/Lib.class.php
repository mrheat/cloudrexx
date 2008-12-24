<?php
/**
 * Guestbook
 * @copyright   CONTREXX CMS - COMVATION AG
 * @author      Comvation Development Team <info@comvation.com>
 * @version     1.0.0
 * @package     contrexx
 * @subpackage  module_guestbook
 * @todo        Edit PHP DocBlocks!
 */

/**
 * Guestbook
 *
 * Library for the Guestbook
 * @copyright   CONTREXX CMS - COMVATION AG
 * @author      Comvation Development Team <info@comvation.com>
 * @access      public
 * @version     1.0.0
 * @package     contrexx
 * @subpackage  module_guestbook
 */
class GuestbookLibrary
{

    /**
    * Gets the guestbook settings
    *
    * @global    ADONewConnection
    */
    function getSettings()
    {
        global $objDatabase;
        $query = "SELECT name, value FROM ".DBPREFIX."module_guestbook_settings";
        $objResult = $objDatabase->Execute($query);
        while (!$objResult->EOF) {
            $this->arrSettings[$objResult->fields['name']] = $objResult->fields['value'];
            $objResult->MoveNext();
        }
    }


    /**
    * add URL hyperlinking function to a string
    *
    * Finds all possible protocols: http ftp https chrome irc etc...
    * Ignores links which come after a = or " so href=", href= and the like are not linked
    * Finds URLs beginning with www.
    * Accepts all URL special chars, even rarely used ones like | , # ( or )
    *
    * @param  string $string
    * @return string $string
    */
    function addHyperlinking($string)
    {
        $string = preg_replace('/((http(s?):\/\/)|(www\.))([\S\.]+)\b/i', '<a href="http$3://$4$5" target="_blank">$2$4$5</a>', $string);
        return $string;
    }

    function addHyperlinking2($string)
    {
        $contents = ereg_replace('[[:alpha:]]+://[^<>[:space:]]+[[:alnum:]/]', '<a href="\\0" target="_blank">\\0</a>', $string);
        return $contents;
    }

    /**
    * Checks the url
    *
    * @param  string  $string
    * @return boolean result
    */
    function isUrl($string)
    {
        if( (strlen($string)<=10) OR (ereg('[!$%\'*+\\.><^_`{|}]$', $string)) ){
            return false;
        }else{
            return true;
        }
    }

    /**
     * Changes the Mail address
     */
    function changeMail($mail)
    {
        $at = array('[AT]', ' AT ', '(AT)');
        srand ((double)microtime()*1000000);
        $rand = rand(0, count($at)-1);
        return $mail = preg_replace("%@%", $at[$rand], $mail);
    }

    /**
    * get email validation javascript code
    *
    * @return     string    $javascript
    */
    function _getJavaScript()
    {
        global $_ARRAYLANG;
        $strJavascript = '
            <script language="JavaScript" type="text/javascript">
            <!--
            function validate() {
                var errorMsg = "";
                if(document.getElementById("nickname").value == ""){
                    errorMsg += "\t- '.$_ARRAYLANG['TXT_NAME'].'\n";
                }
                if(document.getElementById("comment").value == ""){
                    errorMsg += "\t- '.$_ARRAYLANG['TXT_COMMENT'].'\n";
                }
                if(document.getElementById("location").value == ""){
                    errorMsg += "\t- '.$_ARRAYLANG['TXT_LOCATION'].'\n";
                }
                if(!document.getElementsByName("malefemale")[0].checked && !document.getElementsByName("malefemale")[1].checked){
                    errorMsg += "\t- '.$_ARRAYLANG['TXT_SEX'].'\n";
                }
                if(document.getElementById("email").value == ""){
                    errorMsg += "\t- '.$_ARRAYLANG['TXT_EMAIL'].'\n";
                } else {
                    strAllowedChars = "^.+\\\@(\\\[?)[a-zA-Z0-9\\\�\\\�\\\�\\\�\\\�]{ 1 }[a-zA-Z0-9\\\�\\\�\\\�\\\�\\\�\\\-\\\.]+\\\.([a-zA-Z]{ 2,4 }|[0-9]{ 1,3 })(\\\]?)$";
                    arrStrAllowedChars = strAllowedChars.split(" ");
                    strAllowedChars = "";
                    for (i=0;i<arrStrAllowedChars.length;i++){
                        strAllowedChars += arrStrAllowedChars[i];
                    }
                    emailRegExp = new RegExp(strAllowedChars);
                    email = document.getElementById("email").value;
                    if (!emailRegExp.exec(email)){
                        errorMsg += "\n'.$_ARRAYLANG['TXT_INVALID_EMAIL_ADDRESS'].'";
                    }
                }
                if(errorMsg.length>0){
                    errorMsg = "'.$_ARRAYLANG['TXT_FILL_OUT_ALL_REQUIRED_FIELDS'].'\n\n" + errorMsg;
                    alert(errorMsg);
                    return false;
                } else {
                    return true;
                }
            }
            //-->
            </script>';
        return $strJavascript;
    }
}

?>
