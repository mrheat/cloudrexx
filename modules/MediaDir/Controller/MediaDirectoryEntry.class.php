<?php

/**
 * Cloudrexx
 *
 * @link      http://www.cloudrexx.com
 * @copyright Cloudrexx AG 2007-2015
 *
 * According to our dual licensing model, this program can be used either
 * under the terms of the GNU Affero General Public License, version 3,
 * or under a proprietary license.
 *
 * The texts of the GNU Affero General Public License with an additional
 * permission and of our proprietary license can be found at and
 * in the LICENSE file you have received along with this program.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Affero General Public License for more details.
 *
 * "Cloudrexx" is a registered trademark of Cloudrexx AG.
 * The licensing of the program under the AGPLv3 does not imply a
 * trademark license. Therefore any rights, title and interest in
 * our trademarks remain entirely with us.
 */

/**
 * Media  Directory Entry Class
 *
 * @copyright   CLOUDREXX CMS - CLOUDREXX AG
 * @author      Cloudrexx Development Team <info@cloudrexx.com>
 * @package     cloudrexx
 * @subpackage  module_mediadir
 * @todo        Edit PHP DocBlocks!
 */
namespace Cx\Modules\MediaDir\Controller;
/**
 * Media Directory Entry Exception
 *
 * @copyright   CLOUDREXX CMS - CLOUDREXX AG
 * @author      CLOUDREXX Development Team <info@cloudrexx.com>
 * @package     cloudrexx
 * @subpackage  module_mediadir
 */
class MediaDirectoryEntryException extends \Exception {};

/**
 * Media Directory Entry Class
 *
 * @copyright   CLOUDREXX CMS - CLOUDREXX AG
 * @author      CLOUDREXX Development Team <info@cloudrexx.com>
 * @package     cloudrexx
 * @subpackage  module_mediadir
 */
class MediaDirectoryEntry extends MediaDirectoryInputfield
{
    private $intEntryId;
    private $intLevelId;
    private $intCatId;
    private $strSearchTerm;
    private $bolLatest;
    private $bolUnconfirmed;
    private $bolActive;
    private $intLimitStart;
    private $intLimitEnd;
    private $intUserId;
    private $bolPopular;
    private $intCmdFormId;
    private $bolReadyToConfirm;
    private $intLimit;
    private $intOffset;

    private $arrSubCategories = array();
    private $arrSubLevels = array();
    private $strBlockName;

    public $arrEntries = array();
    public $recordCount = 0;

    /**
     * Local instance of MediaDirectoryForm
     * @var MediaDirectoryForm
     */
    protected $objForm = null;

    /**
     * Constructor
     */
    function __construct($name)
    {
        /*if($bolGetEnties == 1) {
            $this->arrEntries = self::getEntries();
        }*/
        parent::__construct(null, false, null, $name);
        parent::getSettings();
        parent::getFrontendLanguages();
    }

    function getEntries($intEntryId=null, $intLevelId=null, $intCatId=null, $strSearchTerm=null, $bolLatest=null, $bolUnconfirmed=null, $bolActive=null, $intLimitStart=null, $intLimitEnd='n', $intUserId=null, $bolPopular=null, $intCmdFormId=null, $bolReadyToConfirm=null, $intLimit=0, $intOffset=0)
    {
        global $_ARRAYLANG, $_CORELANG, $objDatabase, $objInit;
        $this->intEntryId = intval($intEntryId);
        $this->intLevelId = intval($intLevelId);
        $this->intCatId = intval($intCatId);
        $this->bolLatest = intval($bolLatest);
        $this->bolUnconfirmed = intval($bolUnconfirmed);
        $this->bolActive = intval($bolActive);
        $this->strBlockName = null;
        $this->intLimitStart = intval($intLimitStart);
        $this->intLimitEnd = $intLimitEnd;
        $this->intUserId = intval($intUserId);
        $this->bolPopular = intval($bolPopular);
        $this->intCmdFormId = intval($intCmdFormId);
        $this->bolReadyToConfirm = intval($bolReadyToConfirm);
        $this->intLimit = intval($intLimit);
        $this->intOffset = intval($intOffset);

        $strWhereEntryId = '';
        $strWhereLevel = '';
        $strFromLevel = '';
        $strWhereActive = '';
        $strWhereTerm = '';
        $strWhereLangId = '';
        $strWhereFormId = '';
        $strFromCategory = '';
        $strWhereCategory = '';
        $strOrder = "rel_inputfield.`value` ASC";

        if ($this->cx->getMode() == \Cx\Core\Core\Controller\Cx::MODE_FRONTEND) {
            $langId = FRONTEND_LANG_ID;
        } else {
            $langId = LANG_ID;
        }

        if(($strSearchTerm != $_ARRAYLANG['TXT_MEDIADIR_ID_OR_SEARCH_TERM']) && !empty($strSearchTerm)) {
            $this->strSearchTerm = contrexx_addslashes($strSearchTerm);
        } else {
            $this->strSearchTerm = null;
        }

        if($this->intCmdFormId != 0) {
            $strWhereFormId = "AND (entry.`form_id` = ".$this->intCmdFormId.") ";
        }

        if(!empty($this->intEntryId)) {
            $strWhereEntryId = "AND (entry.`id` = ".$this->intEntryId.") ";
        }


        if(!empty($this->intUserId)) {
            $strWhereEntryId = "AND (entry.`added_by` = ".$this->intUserId.") ";
        }

        if(!empty($this->intLevelId)) {
            $strWhereLevel = "AND ((level.`level_id` = ".$this->intLevelId.") AND (level.`entry_id` = entry.`id`)) ";
            $strFromLevel = " ,".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_levels AS level";
        }

        if(!empty($this->intCatId)) {
            $strWhereCategory = "AND ((category.`category_id` = ".$this->intCatId.") AND (category.`entry_id` = entry.`id`)) ";
            $strFromCategory = " ,".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_categories AS category";
        }

        if(!empty($this->bolLatest)) {
            $strOrder = "entry.`validate_date` DESC";
            $this->strBlockName = $this->moduleNameLC."LatestList";
        }

        if(!empty($this->bolPopular)) {
            $strOrder = "entry.`popular_hits` DESC";
        }

        if(empty($this->bolLatest) && empty($this->bolPopular) && $this->arrSettings['settingsIndividualEntryOrder'] == 1) {
            $strOrder = "entry.`order` ASC, rel_inputfield.`value` ASC";
        }

        if(!empty($this->bolUnconfirmed)) {
            $strWhereUnconfirmed = "AND (entry.`confirmed` = 0) ";
            $this->strBlockName = $this->moduleNameLC."ConfirmList";

            if(!empty($this->bolReadyToConfirm)) {
                $strWhereReadyToConfirm = "AND (entry.`ready_to_confirm` = '1' AND entry.`confirmed` = 0) ";
            } else {
                $strWhereReadyToConfirm = '';
            }
        } else {
            if(!empty($this->bolReadyToConfirm)) {
                $strWhereReadyToConfirm = "AND ((entry.`ready_to_confirm` = '0' AND entry.`confirmed` = 0) OR (entry.`confirmed` = 1)) ";
                $strWhereUnconfirmed = "";
            } else {
                $strWhereUnconfirmed = "AND (entry.`confirmed` = 1) ";
                $strWhereReadyToConfirm = "";
            }
        }

        if(!empty($this->bolActive)) {
            $strWhereActive = "AND (entry.`active` = 1) ";
        }

        if(empty($this->intLimitStart) && $this->intLimitStart == 0) {
            $strSelectLimit = "LIMIT ".$this->intLimitEnd;
        } else {
            $strSelectLimit = "LIMIT ".$this->intLimitStart.",".$this->intLimitEnd;
        }

        if($this->intLimitEnd === 'n') {
            $strSelectLimit = '';
        }

        if(empty($this->strSearchTerm)) {
            $strWhereFirstInputfield = "AND (rel_inputfield.`form_id` = entry.`form_id`) AND (rel_inputfield.`field_id` = (".$this->getQueryToFindPrimaryInputFieldId().")) AND (rel_inputfield.`lang_id` = '".$langId."')";
        } else {
            $strWhereTerm = "AND ((rel_inputfield.`value` LIKE '%".$this->strSearchTerm."%') OR (entry.`id` = '".$this->strSearchTerm."')) ";
            $strWhereFirstInputfield = '';
            $this->strBlockName = "";
        }

        if(empty($this->strBlockName)) {
            $this->strBlockName = $this->moduleNameLC."EntryList";
        }

        if($objInit->mode == 'frontend') {
            if(intval($this->arrSettings['settingsShowEntriesInAllLang']) == 0) {
                $strWhereLangId = "AND (entry.`lang_id` = ".$langId.") ";
            }
        }

        $strLimit  = '';
        $strOffset = '';
        if ($this->intLimit > 0) {
            $strLimit = 'LIMIT ' . $this->intLimit;
        }
        if ($this->intOffset > 0) {
            $strOffset = 'OFFSET ' . $this->intOffset;
        }

        if($objInit->mode == 'frontend') {
            $strWhereDuration = "AND (`duration_type` = 1 OR (`duration_type` = 2 AND (`duration_start` < '" . time() . "' AND `duration_end` > '" . time() . "'))) ";
        } else {
            $strWhereDuration = null;
        }

        $query = "
            SELECT SQL_CALC_FOUND_ROWS
                entry.`id` AS `id`,
                entry.`order` AS `order`,
                entry.`form_id` AS `form_id`,
                entry.`create_date` AS `create_date`,
                entry.`update_date` AS `update_date`,
                entry.`validate_date` AS `validate_date`,
                entry.`added_by` AS `added_by`,
                entry.`updated_by` AS `updated_by`,
                entry.`lang_id` AS `lang_id`,
                entry.`hits` AS `hits`,
                entry.`popular_hits` AS `popular_hits`,
                entry.`popular_date` AS `popular_date`,
                entry.`last_ip` AS `last_ip`,
                entry.`confirmed` AS `confirmed`,
                entry.`active` AS `active`,
                entry.`duration_type` AS `duration_type`,
                entry.`duration_start` AS `duration_start`,
                entry.`duration_end` AS `duration_end`,
                entry.`duration_notification` AS `duration_notification`,
                entry.`translation_status` AS `translation_status`,
                entry.`ready_to_confirm` AS `ready_to_confirm`,
                rel_inputfield.`value` AS `value`
            FROM
                ".DBPREFIX."module_".$this->moduleTablePrefix."_entries AS entry,
                ".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_inputfields AS rel_inputfield
                ".$strFromCategory."
                ".$strFromLevel."
            WHERE
                (rel_inputfield.`entry_id` = entry.`id`)
                ".$strWhereFirstInputfield."
                ".$strWhereTerm."
                ".$strWhereUnconfirmed."
                ".$strWhereCategory."
                ".$strWhereLevel."
                ".$strWhereEntryId."
                ".$strWhereActive."
                ".$strWhereLangId."
                ".$strWhereFormId."
                ".$strWhereReadyToConfirm."
                ".$strWhereDuration."
            GROUP BY
                entry.`id`
            ORDER BY
                ".$strOrder."
                ".$strSelectLimit."
            ".$strLimit."
            ".$strOffset."
        ";
        $objEntries = $objDatabase->Execute($query);

        $totalRecords =$objDatabase->Execute("SELECT FOUND_ROWS() AS found_rows");

        $arrEntries = array();

        if ($objEntries !== false) {
            while (!$objEntries->EOF) {
                $arrEntry = array();
                $arrEntryFields = array();

                if(array_key_exists($objEntries->fields['id'], $arrEntries)) {
                    $arrEntries[intval($objEntries->fields['id'])]['entryFields'][] = !empty($objEntries->fields['value']) ? $objEntries->fields['value'] : '-';
                } else {
                    $arrEntryFields[] = !empty($objEntries->fields['value']) ? $objEntries->fields['value'] : '-';

                    $arrEntry['entryId'] = intval($objEntries->fields['id']);
                    $arrEntry['entryOrder'] = intval($objEntries->fields['order']);
                    $arrEntry['entryFormId'] = intval($objEntries->fields['form_id']);
                    $arrEntry['entryFields'] = $arrEntryFields;
                    $arrEntry['entryCreateDate'] = intval($objEntries->fields['create_date']);
                    $arrEntry['entryValdateDate'] = intval($objEntries->fields['validate_date']);
                    $arrEntry['entryAddedBy'] = intval($objEntries->fields['added_by']);
                    $arrEntry['entryHits'] = intval($objEntries->fields['hits']);
                    $arrEntry['entryPopularHits'] = intval($objEntries->fields['popular_hits']);
                    $arrEntry['entryPopularDate'] = intval($objEntries->fields['popular_date']);
                    $arrEntry['entryLastIp'] = htmlspecialchars($objEntries->fields['last_ip'], ENT_QUOTES, CONTREXX_CHARSET);
                    $arrEntry['entryConfirmed'] = intval($objEntries->fields['confirmed']);
                    $arrEntry['entryActive'] = intval($objEntries->fields['active']);
                    $arrEntry['entryDurationType'] = intval($objEntries->fields['duration_type']);
                    $arrEntry['entryDurationStart'] = intval($objEntries->fields['duration_start']);
                    $arrEntry['entryDurationEnd'] = intval($objEntries->fields['duration_end']);
                    $arrEntry['entryDurationNotification'] = intval($objEntries->fields['duration_notification']);
                    $arrEntry['entryTranslationStatus'] = explode(",",$objEntries->fields['translation_status']);
                    $arrEntry['entryReadyToConfirm'] = intval($objEntries->fields['ready_to_confirm']);

                    $this->arrEntries[$objEntries->fields['id']] = $arrEntry;
                }

                $objEntries->MoveNext();
            }
            $this->recordCount = $totalRecords->fields['found_rows'];
        }

        $this->setCurrentFetchedEntryDataObject($this);
    }

    public function findOneBySlug($slug) {
        return $this->findOneByName($this->getNameFromSlug($slug));
    }

    public function findOneByName($name, $formId = null, $catId = null, $levelId = null, $autoload = false) {
		$strWhereLevel = '';
		$strFromLevel = '';
		$strWhereLangId = '';
		$strWhereFormId = '';
		$strFromCategory = '';
		$strWhereCategory = '';

        if($formId) {
            $strWhereFormId = "AND (entry.`form_id` = ".$formId.") ";
        }

        if($levelId) {
            $strWhereLevel = "AND ((level.`level_id` = ".$levelId.") AND (level.`entry_id` = entry.`id`)) ";
            $strFromLevel = " ,".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_levels AS level";
        }

        if($catId) {
        	$strWhereCategory = "AND ((category.`category_id` = ".$catId.") AND (category.`entry_id` = entry.`id`)) ";
        	$strFromCategory = " ,".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_categories AS category";
        }

        if (!$this->arrSettings['settingsShowEntriesInAllLang']) {
            $strWhereLangId = "AND (entry.`lang_id` = ".FRONTEND_LANG_ID.") ";
        }

        $query = "
            SELECT DISTINCT entry.`id` AS `id`
            FROM
                ".DBPREFIX."module_".$this->moduleTablePrefix."_entries AS entry
                INNER JOIN ".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_inputfields AS rel_inputfield ON rel_inputfield.`entry_id` = entry.`id`
                INNER JOIN ".DBPREFIX."module_".$this->moduleTablePrefix."_inputfields AS inputfield ON inputfield.`id` = rel_inputfield.`field_id`
                # rel_inputfield.`lang_id`
                ".$strFromCategory."
                ".$strFromLevel."
            WHERE
                    entry.`active` = 1
                AND entry.`confirmed` = 1
                AND inputfield.`context_type` = 'title'
                AND (entry.`duration_type` = 1 OR (entry.`duration_type` = 2 AND (entry.`duration_start` < '" . time() . "' AND entry.`duration_end` > '" . time() . "')))
                AND rel_inputfield.`value` = '".contrexx_raw2db($name)."'
                ".$strWhereCategory."
                ".$strWhereLevel."
                ".$strWhereLangId."
                ".$strWhereFormId."
            LIMIT 1
        ";

        $objResult = $this->cx->getDb()->getAdoDb()->Execute($query);
        if (!$objResult || $objResult->EOF) {
            return 0;
        }

        return $objResult->fields['id'];
    }

    /**
     * Setter for $this->strBlockName
     *
     * @param string $blockName html parse block name
     */
    function setStrBlockName($blockName)
    {
        $this->strBlockName = $blockName;
    }

    /**
     * Getter for $this->strBlockName
     *
     * @return string current parse block name to list the entries
     */
    function getStrBlockName()
    {
        return $this->strBlockName;
    }

    function listEntries($objTpl, $intView, $googleMapPlaceholder = null)
    {
        global $_ARRAYLANG, $_CORELANG, $objDatabase;

        $objFWUser = \FWUser::getFWUserObject();
        $intToday = time();

        $i = 0;
        switch ($intView) {
            case 1:
                //Backend View
                if(!empty($this->arrEntries)){
                    foreach ($this->arrEntries as $key => $arrEntry) {
                        if(intval($arrEntry['entryAddedBy']) != 0) {
                            if ($objUser = $objFWUser->objUser->getUser(intval($arrEntry['entryAddedBy']))) {
                                $strAddedBy = $objUser->getUsername();
                            } else {
                                $strAddedBy = "unknown";
                            }
                        } else {
                            $strAddedBy = "unknown";
                        }

                        if($arrEntry['entryActive'] == 1) {
                            $strStatus = '../core/Core/View/Media/icons/status_green.gif';
                            $intStatus = 0;

                            if(($arrEntry['entryDurationStart'] > $intToday || $arrEntry['entryDurationEnd'] < $intToday) && $arrEntry['entryDurationType'] == 2) {
                                $strStatus = '../core/Core/View/Media/icons/status_yellow.gif';
                            }
                        } else {
                            $strStatus = '../core/Core/View/Media/icons/status_red.gif';
                            $intStatus = 1;
                        }

                        //get votes
                        if($this->arrSettings['settingsAllowVotes']) {
                            $objVoting = new MediaDirectoryVoting($this->moduleName);
                            $objVoting->getVotes($objTpl, $arrEntry['entryId']);
                            if ($objTpl->blockExists('mediadirEntryVotes')) {
                                $objTpl->parse('mediadirEntryVotes');
                            }
                        } else {
                            if ($objTpl->blockExists('mediadirEntryVotes')) {
                                $objTpl->hideBlock('mediadirEntryVotes');
                            }
                        }

                        //get comments
                        if($this->arrSettings['settingsAllowComments']) {
                            $objComment = new MediaDirectoryComment($this->moduleName);
                            $objComment->getComments($objTpl, $arrEntry['entryId']);
                            if ($objTpl->blockExists('mediadirEntryComments')) {
                                $objTpl->parse('mediadirEntryComments');
                            }
                        } else {
                            if ($objTpl->blockExists('mediadirEntryComments')) {
                                $objTpl->hideBlock('mediadirEntryComments');
                            }
                        }

                        $objTpl->setVariable(array(
                            $this->moduleLangVar.'_ROW_CLASS' =>  $i%2==0 ? 'row1' : 'row2',
                            $this->moduleLangVar.'_ENTRY_ID' =>  $arrEntry['entryId'],
                            $this->moduleLangVar.'_ENTRY_STATUS' => $strStatus,
                            $this->moduleLangVar.'_ENTRY_SWITCH_STATUS' => $intStatus,
                            $this->moduleLangVar.'_ENTRY_VALIDATE_DATE' =>  date("H:i:s - d.m.Y",$arrEntry['entryValdateDate']),
                            $this->moduleLangVar.'_ENTRY_CREATE_DATE' =>  date("H:i:s - d.m.Y",$arrEntry['entryCreateDate']),
                            $this->moduleLangVar.'_ENTRY_AUTHOR' =>  htmlspecialchars($strAddedBy, ENT_QUOTES, CONTREXX_CHARSET),
                            $this->moduleLangVar.'_ENTRY_HITS' =>  $arrEntry['entryHits'],
                            $this->moduleLangVar.'_ENTRY_FORM' => $this->getFormDefinitionOfEntry($arrEntry['entryId'])['formName'][0],
                        ));

                        foreach ($arrEntry['entryFields'] as $key => $strFieldValue) {
                            $intPos = $key+1;

                            $objTpl->setVariable(array(
                                                       $this->moduleLangVar.'_ENTRY_FIELD_'.$intPos.'_POS' => contrexx_raw2xhtml(substr($strFieldValue, 0, 255)),
                            ));
                        }

                        //get order
                        if($this->arrSettings['settingsIndividualEntryOrder'] == 1) {
                            $objTpl->setVariable(array(
                                $this->moduleLangVar.'_ENTRY_ORDER' => '<input name="entriesOrder['.$arrEntry['entryId'].']" style="width: 30px; margin-right: 5px;" value="'.$arrEntry['entryOrder'].'" onfocus="this.select();" type="text">',
                            ));

                            if(intval($objTpl->blockExists($this->moduleNameLC.'EntriesSaveOrder')) != 0) {
                                $objTpl->touchBlock($this->moduleNameLC.'EntriesSaveOrder');
                            }
                        } else {
                            if(intval($objTpl->blockExists($this->moduleNameLC.'EntriesSaveOrder')) != 0) {
                                $objTpl->hideBlock($this->moduleNameLC.'EntriesSaveOrder');
                            }
                        }

                        $i++;
                        $objTpl->parse($this->strBlockName);
                        $objTpl->hideBlock('noEntriesFound');
                        $objTpl->clearVariables();
                    }
                } else {
                    $objTpl->setGlobalVariable(array(
                        'TXT_'.$this->moduleLangVar.'_NO_ENTRIES_FOUND' => $_ARRAYLANG['TXT_MEDIADIR_NO_ENTRIES_FOUND'],
                    ));

                    $objTpl->touchBlock('noEntriesFound');
                    $objTpl->clearVariables();
                }
                break;
            case 2:
                //Frontend View
                if(!empty($this->arrEntries)) {
                    foreach ($this->arrEntries as $key => $arrEntry) {
                        if(($arrEntry['entryDurationStart'] < $intToday && $arrEntry['entryDurationEnd'] > $intToday) || $arrEntry['entryDurationType'] == 1) {
                            $objInputfields = new MediaDirectoryInputfield(intval($arrEntry['entryFormId']),false,$arrEntry['entryTranslationStatus'], $this->moduleName);
                            $objInputfields->listInputfields($objTpl, 3, intval($arrEntry['entryId']));

                            if(intval($arrEntry['entryAddedBy']) != 0) {
                                if ($objUser = $objFWUser->objUser->getUser(intval($arrEntry['entryAddedBy']))) {
                                    $strAddedBy = $objUser->getUsername();
                                } else {
                                    $strAddedBy = "unknown";
                                }
                            } else {
                                $strAddedBy = "unknown";
                            }

                            $strDetailUrl = '#';
                            try {
                                if ($arrEntry['entryReadyToConfirm'] == 1 || $arrEntry['entryConfirmed'] == 1) {
                                    $strDetailUrl = $this->getDetailUrlOfEntry($arrEntry);
                                }
                            } catch (MediaDirectoryEntryException $e) {}
                            $objTpl->setVariable(array(
                                $this->moduleLangVar.'_ROW_CLASS' =>  $i%2==0 ? 'row1' : 'row2',
                                $this->moduleLangVar.'_ENTRY_ID' =>  $arrEntry['entryId'],
                                $this->moduleLangVar.'_ENTRY_TITLE' => contrexx_raw2xhtml($arrEntry['entryFields'][0]),
                                $this->moduleLangVar.'_ENTRY_TITLE_URL_ENCODED' => urlencode($arrEntry['entryFields'][0]),
                                $this->moduleLangVar.'_ENTRY_VALIDATE_DATE' =>  date("H:i:s - d.m.Y",$arrEntry['entryValdateDate']),
                                $this->moduleLangVar.'_ENTRY_CREATE_DATE' =>  date("H:i:s - d.m.Y",$arrEntry['entryCreateDate']),
                                $this->moduleLangVar.'_ENTRY_AUTHOR' =>  htmlspecialchars($strAddedBy, ENT_QUOTES, CONTREXX_CHARSET),
                                $this->moduleLangVar.'_ENTRY_CATEGORIES' =>  $this->getCategoriesLevels(1, $arrEntry['entryId']),
                                $this->moduleLangVar.'_ENTRY_LEVELS' =>  $this->getCategoriesLevels(2, $arrEntry['entryId']),
                                $this->moduleLangVar.'_ENTRY_HITS' =>  $arrEntry['entryHits'],
                                $this->moduleLangVar.'_ENTRY_POPULAR_HITS' =>  $arrEntry['entryPopularHits'],
                                $this->moduleLangVar.'_ENTRY_DETAIL_URL' => $strDetailUrl,
                                $this->moduleLangVar.'_ENTRY_EDIT_URL' =>  'index.php?section='.$this->moduleName.'&amp;cmd=edit&amp;eid='.$arrEntry['entryId'],
                                $this->moduleLangVar.'_ENTRY_DELETE_URL' =>  'index.php?section='.$this->moduleName.'&amp;cmd=delete&amp;eid='.$arrEntry['entryId'],
                                'TXT_'.$this->moduleLangVar.'_ENTRY_DELETE' =>  $_ARRAYLANG['TXT_MEDIADIR_DELETE'],
                                'TXT_'.$this->moduleLangVar.'_ENTRY_EDIT' =>  $_ARRAYLANG['TXT_MEDIADIR_EDIT'],
                                'TXT_'.$this->moduleLangVar.'_ENTRY_DETAIL' =>  $_ARRAYLANG['TXT_MEDIADIR_DETAIL'],
                                'TXT_'.$this->moduleLangVar.'_ENTRY_CATEGORIES' =>  $_ARRAYLANG['TXT_MEDIADIR_CATEGORIES'],
                                'TXT_'.$this->moduleLangVar.'_ENTRY_LEVELS' =>  $_ARRAYLANG['TXT_MEDIADIR_LEVELS'],
                            ));

                            $this->parseCategoryLevels(1, $arrEntry['entryId'], $objTpl);
                            $this->parseCategoryLevels(2, $arrEntry['entryId'], $objTpl);

                            foreach ($arrEntry['entryFields'] as $key => $strFieldValue) {
                                $intPos = $key+1;

                                $objTpl->setVariable(array(
                                    'MEDIADIR_ENTRY_FIELD_'.$intPos.'_POS' => substr($strFieldValue, 0, 255),
                                ));
                                }

                            if($this->arrSettings['settingsAllowVotes']) {
                                $objVoting = new MediaDirectoryVoting($this->moduleName);

                                if(intval($objTpl->blockExists($this->moduleNameLC.'EntryVoteForm')) != 0) {
                                    $objVoting->getVoteForm($objTpl, $arrEntry['entryId']);
                                }
                                if(intval($objTpl->blockExists($this->moduleNameLC.'EntryVotes')) != 0) {
                                    $objVoting->getVotes($objTpl, $arrEntry['entryId']);
                                }
                            }

                            if($this->arrSettings['settingsAllowComments']) {
                                $objComment = new MediaDirectoryComment($this->moduleName);

                                if(intval($objTpl->blockExists($this->moduleNameLC.'EntryComments')) != 0) {
                                    $objComment->getComments($objTpl, $arrEntry['entryId']);
                                }

                                if(intval($objTpl->blockExists($this->moduleNameLC.'EntryCommentForm')) != 0) {
                                    $objComment->getCommentForm($objTpl, $arrEntry['entryId']);
                                }
                            }

                            if(!$this->arrSettings['settingsAllowEditEntries'] && intval($objTpl->blockExists($this->moduleNameLC.'EntryEditLink')) != 0) {
                                $objTpl->hideBlock($this->moduleNameLC.'EntryEditLink');
                            }

                            if(!$this->arrSettings['settingsAllowDelEntries'] && intval($objTpl->blockExists($this->moduleNameLC.'EntryDeleteLink')) != 0) {
                                $objTpl->hideBlock($this->moduleNameLC.'EntryDeleteLink');
                            }

                            $i++;
                                $objTpl->parse($this->strBlockName);

                            $objTpl->clearVariables();
                        }
                    }
                } else {
                    $objTpl->setVariable(array(
                        'TXT_'.$this->moduleLangVar.'_SEARCH_MESSAGE' => $_ARRAYLANG['TXT_MEDIADIR_NO_ENTRIES_FOUND'],
                    ));

                    $objTpl->parse($this->moduleNameLC.'NoEntriesFound');
                    $objTpl->clearVariables();
                }
                break;
            case 3:
                //Alphabetical View
                if(!empty($this->arrEntries)) {
                    $arrAlphaIndexes = array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','0-9','#');
                    $arrAlphaGroups = array();

                    foreach ($this->arrEntries as $key => $arrEntry) {
                        $strTitle = $arrEntry['entryFields'][0];
                        $strAlphaIndex = strtoupper(substr($strTitle, 0, 1));

                        if(!in_array($strAlphaIndex, $arrAlphaIndexes)){
                            if(is_numeric($strAlphaIndex)) {
                                $strAlphaIndex = '0-9';
                            } else {
                                $strAlphaIndex = '#';
                            }
                        }

                        $arrAlphaGroups[$strAlphaIndex][] = $arrEntry;
                    }

                    if(intval($objTpl->blockExists($this->moduleNameLC.'AlphaIndex')) != 0) {
                        $objTpl->touchBlock($this->moduleNameLC.'AlphaIndex');

                        foreach ($arrAlphaIndexes as $key => $strIndex) {
                            if(array_key_exists($strIndex, $arrAlphaGroups)) {
                                $strAlphaIndex = '<a href="#'.$strIndex.'">'.$strIndex.'</a>';
                            } else {
                                $strAlphaIndex = ''.$strIndex.'';
                            }

                            $objTpl->setVariable(array(
                                $this->moduleLangVar.'_ALPHA_INDEX_LINK' => $strAlphaIndex
                            ));

                            $objTpl->parse($this->moduleNameLC.'AlphaIndexElement');
                        }
                    }



                    foreach ($arrAlphaGroups as $strAlphaIndex => $arrEntries) {
                        if(intval($objTpl->blockExists($this->moduleNameLC.'AlphabeticalTitle')) != 0) {
                            $objTpl->setVariable(array(
                                $this->moduleLangVar.'_ALPHABETICAL_ANCHOR' => $strAlphaIndex,
                                'TXT_'.$this->moduleLangVar.'_ALPHABETICAL_TITLE' => $strAlphaIndex
                            ));

                            $objTpl->parse($this->moduleNameLC.'AlphabeticalTitle');
                        }

                        foreach ($arrEntries as $key => $arrEntry) {
                            if(($arrEntry['entryDurationStart'] < $intToday && $arrEntry['entryDurationEnd'] > $intToday) || $arrEntry['entryDurationType'] == 1) {
                                $objInputfields = new MediaDirectoryInputfield(intval($arrEntry['entryFormId']),false,$arrEntry['entryTranslationStatus'], $this->moduleName);
                                $objInputfields->listInputfields($objTpl, 3, intval($arrEntry['entryId']));
                                $strStatus = ($arrEntry['entryActive'] == 1) ? 'active' : 'inactive';

                                if(intval($arrEntry['entryAddedBy']) != 0) {
                                    if ($objUser = $objFWUser->objUser->getUser(intval($arrEntry['entryAddedBy']))) {
                                        $strAddedBy = $objUser->getUsername();
                                    } else {
                                        $strAddedBy = "unknown";
                                    }
                                } else {
                                    $strAddedBy = "unknown";
                                }

                                $strDetailUrl = '#';
                                try {
                                    if ($arrEntry['entryReadyToConfirm'] == 1 || $arrEntry['entryConfirmed'] == 1) {
                                        $strDetailUrl = $this->getDetailUrlOfEntry($arrEntry);
                                    }
                                } catch (MediaDirectoryEntryException $e) {}

                                $objTpl->setVariable(array(
                                    $this->moduleLangVar.'_ROW_CLASS' =>  $i%2==0 ? 'row1' : 'row2',
                                    $this->moduleLangVar.'_ENTRY_ID' =>  $arrEntry['entryId'],
                                    $this->moduleLangVar.'_ENTRY_TITLE' => contrexx_raw2xhtml($arrEntry['entryFields'][0]),
                                    $this->moduleLangVar.'_ENTRY_TITLE_URL_ENCODED' => urlencode($arrEntry['entryFields'][0]),
                                    $this->moduleLangVar.'_ENTRY_STATUS' => $strStatus,
                                    $this->moduleLangVar.'_ENTRY_VALIDATE_DATE' =>  date("H:i:s - d.m.Y",$arrEntry['entryValdateDate']),
                                    $this->moduleLangVar.'_ENTRY_CREATE_DATE' =>  date("H:i:s - d.m.Y",$arrEntry['entryCreateDate']),
                                    $this->moduleLangVar.'_ENTRY_AUTHOR' =>  htmlspecialchars($strAddedBy, ENT_QUOTES, CONTREXX_CHARSET),
                                    $this->moduleLangVar.'_ENTRY_CATEGORIES' =>  $this->getCategoriesLevels(1, $arrEntry['entryId']),
                                    $this->moduleLangVar.'_ENTRY_LEVELS' =>  $this->getCategoriesLevels(2, $arrEntry['entryId']),
                                    $this->moduleLangVar.'_ENTRY_HITS' =>  $arrEntry['entryHits'],
                                    $this->moduleLangVar.'_ENTRY_POPULAR_HITS' =>  $arrEntry['entryPopularHits'],
                                    $this->moduleLangVar.'_ENTRY_DETAIL_URL' => $strDetailUrl,
                                    $this->moduleLangVar.'_ENTRY_EDIT_URL' =>  'index.php?section='.$this->moduleName.'&amp;cmd=edit&amp;eid='.$arrEntry['entryId'],
                                    $this->moduleLangVar.'_ENTRY_DELETE_URL' =>  'index.php?section='.$this->moduleName.'&amp;cmd=delete&amp;eid='.$arrEntry['entryId'],
                                    'TXT_'.$this->moduleLangVar.'_ENTRY_DELETE' =>  $_ARRAYLANG['TXT_MEDIADIR_DELETE'],
                                    'TXT_'.$this->moduleLangVar.'_ENTRY_EDIT' =>  $_ARRAYLANG['TXT_MEDIADIR_EDIT'],
                                    'TXT_'.$this->moduleLangVar.'_ENTRY_DETAIL' =>  $_ARRAYLANG['TXT_MEDIADIR_DETAIL'],
                                    'TXT_'.$this->moduleLangVar.'_ENTRY_CATEGORIES' =>  $_ARRAYLANG['TXT_MEDIADIR_CATEGORIES'],
                                    'TXT_'.$this->moduleLangVar.'_ENTRY_LEVELS' =>  $_ARRAYLANG['TXT_MEDIADIR_LEVELS'],
                                ));

                                $this->parseCategoryLevels(1, $arrEntry['entryId'], $objTpl);
                                $this->parseCategoryLevels(2, $arrEntry['entryId'], $objTpl);

                                foreach ($arrEntry['entryFields'] as $key => $strFieldValue) {
                                    $intPos = $key+1;

                                    $objTpl->setVariable(array(
                                                               'MEDIADIR_ENTRY_FIELD_'.$intPos.'_POS' => contrexx_raw2xhtml(substr($strFieldValue, 0, 255)),
                                    ));
                                }

                                if($this->arrSettings['settingsAllowVotes']) {
                                    $objVoting = new MediaDirectoryVoting($this->moduleName);

                                    if(intval($objTpl->blockExists($this->moduleNameLC.'EntryVoteForm')) != 0) {
                                        $objVoting->getVoteForm($objTpl, $arrEntry['entryId']);
                                    }
                                    if(intval($objTpl->blockExists($this->moduleNameLC.'EntryVotes')) != 0) {
                                        $objVoting->getVotes($objTpl, $arrEntry['entryId']);
                                    }
                                }

                                if($this->arrSettings['settingsAllowComments']) {
                                    $objComment = new MediaDirectoryComment($this->moduleName);

                                    if(intval($objTpl->blockExists($this->moduleNameLC.'EntryComments')) != 0) {
                                        $objComment->getComments($objTpl, $arrEntry['entryId']);
                                    }

                                    if(intval($objTpl->blockExists($this->moduleNameLC.'EntryCommentForm')) != 0) {
                                        $objComment->getCommentForm($objTpl, $arrEntry['entryId']);
                                    }
                                }

                                if(!$this->arrSettings['settingsAllowEditEntries'] && intval($objTpl->blockExists($this->moduleNameLC.'EntryEditLink')) != 0) {
                                    $objTpl->hideBlock($this->moduleNameLC.'EntryEditLink');
                                }

                                if(!$this->arrSettings['settingsAllowDelEntries'] && intval($objTpl->blockExists($this->moduleNameLC.'EntryDeleteLink')) != 0) {
                                    $objTpl->hideBlock($this->moduleNameLC.'EntryDeleteLink');
                                }

                                $i++;
                                $objTpl->parse($this->moduleNameLC.'EntryList');
                                $objTpl->clearVariables();
                            }
                        }
                    }
                } else {
                    $objTpl->setVariable(array(
                        'TXT_'.$this->moduleLangVar.'_SEARCH_MESSAGE' => $_ARRAYLANG['TXT_MEDIADIR_NO_ENTRIES_FOUND'],
                    ));

                    $objTpl->parse($this->moduleNameLC.'NoEntriesFound');
                    $objTpl->clearVariables();
                }
            case 4:
                //Google Map

                if (!isset($googleMapPlaceholder)) {
                    $googleMapPlaceholder = $this->moduleLangVar.'_GOOGLE_MAP';
                }

                // abort in case the relevant placeholder is missing in the template
                if (!$objTpl->placeholderExists($googleMapPlaceholder)) {
                    break;
                }

                $objGoogleMap = new \googleMap();
                $objGoogleMap->setMapId($this->moduleNameLC.'GoogleMap');
                $objGoogleMap->setMapStyleClass('mapLarge');
                $objGoogleMap->setMapType($this->arrSettings['settingsGoogleMapType']);

                $arrValues = explode(',', $this->arrSettings['settingsGoogleMapStartposition']);
                $objGoogleMap->setMapZoom($arrValues[2]);
                $objGoogleMap->setMapCenter($arrValues[1], $arrValues[0]);

                foreach ($this->arrEntries as $key => $arrEntry) {
                    if (
                        (
                            $arrEntry['entryDurationStart'] < $intToday &&
                            $arrEntry['entryDurationEnd'] > $intToday
                        ) ||
                        $arrEntry['entryDurationType'] == 1
                    ) {
                        $intEntryId = intval($arrEntry['entryId']);
                        $intEntryFormId = intval($arrEntry['entryFormId']);

                        $query = "
                            SELECT
                                inputfield.`id` AS `id`,
                                rel_inputfield.`value` AS `value`
                            FROM
                                ".DBPREFIX."module_".$this->moduleTablePrefix."_inputfields AS inputfield,
                                ".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_inputfields AS rel_inputfield
                            WHERE
                                inputfield.`form` = '".$intEntryFormId."'
                            AND
                                inputfield.`type`= '15'
                            AND
                                rel_inputfield.`field_id` = inputfield.`id`
                            AND
                                rel_inputfield.`entry_id` = '".$intEntryId."'
                            LIMIT 1
                        ";

                        $objRSMapKoordinates = $objDatabase->Execute($query);

                        if (
                            $objRSMapKoordinates === false ||
                            empty($objRSMapKoordinates->fields['value'])
                        ) {
                            continue;
                        }
                        $arrValues = explode(',', $objRSMapKoordinates->fields['value']);
                        $strValueLon = empty($arrValues[1]) ? 0 : $arrValues[1];
                        $strValueLat = empty($arrValues[0]) ? 0 : $arrValues[0];

                        if (empty($strValueLon) && empty($strValueLat)) {
                            continue;
                        }

                        $strDetailUrl = '#';
                        try {
                            $strDetailUrl = $this->getDetailUrlOfEntry($arrEntry, true);
                        } catch (MediaDirectoryEntryException $e) {}

	                    $strEntryLink = '<a href="'.$strDetailUrl.'">'.$_ARRAYLANG['TXT_MEDIADIR_DETAIL'].'</a>';

	                    $strEntryTitle = '<b>'.contrexx_raw2xhtml($arrEntry['entryFields']['0']).'</b>';

                        $mapIndex      = $objGoogleMap->getMapIndex();

                        $clickFunction = <<<JSCODE
infoWindow = cx.variables.get('map_{$mapIndex}_infoWindow', '{$objGoogleMap->getMapId()}');
if (infoWindow) {
    infoWindow.close();
}
mapMarker = cx.variables.get('map_{$mapIndex}_markers', '{$objGoogleMap->getMapId()}')[$intEntryId];
infoWindow.setContent(mapMarker.info);
infoWindow.open(map_$mapIndex, mapMarker.marker);
JSCODE;

                        $objGoogleMap->addMapMarker(
                            $intEntryId,
                            $strValueLon,
                            $strValueLat,
                            $strEntryTitle . "<br />" . $strEntryLink,
                            true,
                            $clickFunction
                        );
                    }
                }

                $objTpl->setVariable(array(
                    $googleMapPlaceholder => $objGoogleMap->getMap()
                ));

                break;

            case 5:
                // Frontend View: related entries
                foreach ($this->arrEntries as $key => $arrEntry) {
                    if(($arrEntry['entryDurationStart'] < $intToday && $arrEntry['entryDurationEnd'] > $intToday) || $arrEntry['entryDurationType'] == 1) {
                        $objInputfields = new MediaDirectoryInputfield(intval($arrEntry['entryFormId']),false,$arrEntry['entryTranslationStatus'], $this->moduleName);
                        $objInputfields->moduleNameLC .= '_related';
                        $objInputfields->moduleLangVar .= '_RELATED';
                        $objInputfields->listInputfields($objTpl, 3, intval($arrEntry['entryId']));

                        if(intval($arrEntry['entryAddedBy']) != 0) {
                            if ($objUser = $objFWUser->objUser->getUser(intval($arrEntry['entryAddedBy']))) {
                                $strAddedBy = $objUser->getUsername();
                            } else {
                                $strAddedBy = "unknown";
                            }
                        } else {
                            $strAddedBy = "unknown";
                        }

                        $strDetailUrl = '#';
                        try {
                            if ($arrEntry['entryReadyToConfirm'] == 1 || $arrEntry['entryConfirmed'] == 1) {
                                $strDetailUrl = $this->getDetailUrlOfEntry($arrEntry);
                            }
                        } catch (MediaDirectoryEntryException $e) {}
                        $objTpl->setVariable(array(
                            $this->moduleLangVar.'_RELATED_ROW_CLASS' =>  $i%2==0 ? 'row1' : 'row2',
                            $this->moduleLangVar.'_RELATED_ENTRY_ID' =>  $arrEntry['entryId'],
                            $this->moduleLangVar.'_RELATED_ENTRY_TITLE' => contrexx_raw2xhtml($arrEntry['entryFields'][0]),
                            $this->moduleLangVar.'_RELATED_ENTRY_TITLE_URL_ENCODED' => urlencode($arrEntry['entryFields'][0]),
                            $this->moduleLangVar.'_RELATED_ENTRY_VALIDATE_DATE' =>  date("H:i:s - d.m.Y",$arrEntry['entryValdateDate']),
                            $this->moduleLangVar.'_RELATED_ENTRY_CREATE_DATE' =>  date("H:i:s - d.m.Y",$arrEntry['entryCreateDate']),
                            $this->moduleLangVar.'_RELATED_ENTRY_AUTHOR' =>  htmlspecialchars($strAddedBy, ENT_QUOTES, CONTREXX_CHARSET),
                            $this->moduleLangVar.'_RELATED_ENTRY_HITS' =>  $arrEntry['entryHits'],
                            $this->moduleLangVar.'_RELATED_ENTRY_POPULAR_HITS' =>  $arrEntry['entryPopularHits'],
                            $this->moduleLangVar.'_RELATED_ENTRY_DETAIL_URL' => $strDetailUrl,
                            'TXT_'.$this->moduleLangVar.'_RELATED_ENTRY_DETAIL' =>  $_ARRAYLANG['TXT_MEDIADIR_DETAIL'],
                        ));

                        foreach ($arrEntry['entryFields'] as $key => $strFieldValue) {
                            $intPos = $key+1;

                            $objTpl->setVariable(array(
                                'MEDIADIR_RELATED_ENTRY_FIELD_'.$intPos.'_POS' => substr($strFieldValue, 0, 255),
                            ));
                        }

                        $i++;
                        $objTpl->parse($this->strBlockName);

                        $objTpl->clearVariables();
                    }
                }
                break;
        }
    }


    /**
     * Get the Url of the section that is used to list the loaded entry
     *
     * If a form specific page exists (i.e. section=MediaDir&cmd=team), then
     * the Url to that specific page is returned. Otherwise the Url to the mail
     * application page is returned (section=MediaDir).
     *
     * @throws MediaDirectoryEntryException    In case no valid application page was found,
     *                                         MediaDirectoryEntryException is thrown
     * @return  \Cx\Core\Routing\Url    Url of the form specific section
     */
    public function getFormUrl() {
        $pageRepo = \Cx\Core\Core\Controller\Cx::instanciate()->getDb()->getEntityManager()->getRepository('Cx\Core\ContentManager\Model\Entity\Page');
        $arrEntry = $this->arrEntries[$this->intEntryId];

        // fetch the definition of the form the entry is based on
        $formDefinition = $this->getFormDefinitionOfEntry($arrEntry['entryId']);

        // fetch form specific page (i.e. section=MediaDir&cmd=team)
        $page = $pageRepo->findOneByModuleCmdLang($this->moduleName, $formDefinition['formCmd'], FRONTEND_LANG_ID);

        // fetch main application page (section=MediaDir)
        if (!$page || !$page->isActive()) {
            $page = $pageRepo->findOneByModuleCmdLang($this->moduleName, '', FRONTEND_LANG_ID);
        }

        // abort in case the entry can't be linked to an existing page
        if (!$page || !$page->isActive()) {
            throw new MediaDirectoryEntryException();
        }

        // create url to the target page and add the entry's ID as argument
        $url = \Cx\Core\Routing\Url::fromPage($page);

        return $url;
    }

    /**
     * Get the Url of the page on which the entry shall be displayed on
     *
     * Alias for getDetailUrlOfEntry() where the current loaded entry will
     * be passed to getDetailUrlOfEntry() as first argument $arrEntry.
     *
     * @param   boolean $fallbackToOverview If set to TRUE, method will try to
     *          match an overview page in case no appropriate detail page exists
     *          (step 3 & 4 of above listing). Defaults to FALSE.
     * @throws MediaDirectoryEntryException    In case no valid application page was found,
     *                                         MediaDirectoryEntryException is thrown
     * @return  \Cx\Core\Routing\Url    Url the entry will be displayed on
     */
    public function getDetailUrl($fallbackToOverview = false) {
        return $this->getDetailUrlOfEntry($this->arrEntries[$this->intEntryId], $fallbackToOverview);
    }

    /**
     * Get the Url of the page on which the entry shall be displayed on
     *
     * If will try to look of the available application pages in the following order:
     * 1. Form specific detail page (i.e. section=MediaDir&cmd=detail3)
     * 2. Regular detail page (i.e. section=MediaDir&cmd=detail)
     * 3. (optional) Form specific overview page (i.e. section=MediaDir&cmd=team)
     * 4. (optional) Mail application page (i.e. section=MediaDir)
     *
     * @param   array   $arrEntry   Data regarding an entry object
     * @param   boolean $fallbackToOverview If set to TRUE, method will try to
     *          match an overview page in case no appropriate detail page exists
     *          (step 3 & 4 of above listing). Defaults to FALSE.
     * @throws MediaDirectoryEntryException    In case no valid application page was found,
     *                                         MediaDirectoryEntryException is thrown
     * @return  \Cx\Core\Routing\Url    Url the entry will be displayed on
     */
    public function getDetailUrlOfEntry($arrEntry, $fallbackToOverview = false) {
        static $arrIdsOfFormSpecificEntries = array();

        // create human readable url if option has been enabled to do so
        if ($this->arrSettings['usePrettyUrls']) {
            return $this->getAutoSlugPath($arrEntry, $this->intCatId, $this->intLevelId);
        }

        $detailCmd = 'detail';
        $formId = $arrEntry['entryFormId'];
        $formSpecificDetailCmd = $detailCmd . $formId;
        $url = null;
        $pagingPos = 0;
        $pageRepo = \Cx\Core\Core\Controller\Cx::instanciate()->getDb()->getEntityManager()->getRepository('Cx\Core\ContentManager\Model\Entity\Page');

        // fetch form specific detail page (i.e. section=MediaDir&cmd=detail3)
        $page = $pageRepo->findOneByModuleCmdLang($this->moduleName, $formSpecificDetailCmd, FRONTEND_LANG_ID);

        // check if form specific detail page exists
        if (!$page || !$page->isActive()) {
            // fetch regular detail page (section=MediaDir&cmd=detail)
            $page = $pageRepo->findOneByModuleCmdLang($this->moduleName, $detailCmd, FRONTEND_LANG_ID);
        }

        // check if the entry shall be linked to an overview page in case no detail page exists
        if ((!$page || !$page->isActive()) && $fallbackToOverview) {
            // fetch the definition of the form the entry is based on
            $formDefinition = $this->getFormDefinitionOfEntry($arrEntry['entryId']);

            // fetch entry paging limit
            $entriesPerPage = intval($this->arrSettings['settingsPagingNumEntries']);

            // fetch form specific page, if no regular detail page exists (i.e. section=MediaDir&cmd=team)
            $page = $pageRepo->findOneByModuleCmdLang($this->moduleName, $formDefinition['formCmd'], FRONTEND_LANG_ID);
            if ($page && $page->isActive()) {
                if (!isset($arrIdsOfFormSpecificEntries[$formDefinition['formCmd']])) {
                    $objEntry = new MediaDirectoryEntry($this->moduleName);
                    $objEntry->getEntries(null, null, null, null, null, null, true, null, 'n', null, null, $formDefinition['formId']);
                    $arrIdsOfFormSpecificEntries[$formDefinition['formCmd']] = array_keys($objEntry->arrEntries);
                }

                // use form's paging limit for paging
                if (!empty($formDefinition['formEntriesPerPage'])) {
                    $entriesPerPage = $formDefinition['formEntriesPerPage'];
                }
            }

            // fetch main application page (section=MediaDir)
            if (!$page || !$page->isActive()) {
                $page = $pageRepo->findOneByModuleCmdLang($this->moduleName, '', FRONTEND_LANG_ID);
                if (!isset($arrIdsOfFormSpecificEntries[$formDefinition['formCmd']])) {
                    $objEntry = new MediaDirectoryEntry($this->moduleName);
                    $objEntry->getEntries(null, null, null, null, null, null, true);
                    $arrIdsOfFormSpecificEntries[$formDefinition['formCmd']] = array_keys($objEntry->arrEntries);
                }
            }

            // find position of entry in whole entry list
            $entryPos  = array_search($arrEntry['entryId'], $arrIdsOfFormSpecificEntries[$formDefinition['formCmd']]);

            // determine paging position of entry
            $pagingPos = floor($entryPos / $entriesPerPage) * $entriesPerPage;
        }

        // abort in case the entry can't be linked to an existing page
        if (!$page || !$page->isActive()) {
            throw new MediaDirectoryEntryException();
        }

        // create url to the target page and add the entry's ID as argument
        $url = \Cx\Core\Routing\Url::fromPage($page);
        $url->setParam('eid', $arrEntry['entryId']);

        // set optional paging position
        if ($pagingPos) {
            $url->setParam('pos', $pagingPos);
        }

        return $url;
    }

    /**
     * Update the entries while activating the new language.
     *
     * @return null
     */
    public function updateEntries()
    {
        global $objDatabase, $_LANGID;

        $objEntries = $objDatabase->Execute('SELECT t1.* FROM `'.DBPREFIX.'module_'.$this->moduleTablePrefix.'_rel_entry_inputfields` as t1 WHERE `lang_id` = '.$_LANGID.' OR `lang_id` =  "SELECT
                                            first_rel_inputfield.`lang_id` AS `id`
                                        FROM
                                            '.DBPREFIX.'module_'.$this->moduleTablePrefix.'_rel_entry_inputfields AS first_rel_inputfield
                                        LEFT JOIN
                                            '.DBPREFIX.'module_'.$this->moduleTablePrefix.'_inputfields AS inputfield
                                        ON
                                            first_rel_inputfield.`field_id` = inputfield.`id`
                                        WHERE
                                            (first_rel_inputfield.`entry_id` = t1.`entry_id`)
                                        AND
                                            (first_rel_inputfield.`form_id` = t1.`form_id`)
                                        AND
                                            (first_rel_inputfield.`value` != "")
                                        LIMIT 1" GROUP BY `field_id`, `entry_id`, `form_id`  ORDER BY `entry_id`'
                        );

        if ($objEntries !== false) {
            while (!$objEntries->EOF) {
                foreach ($this->arrFrontendLanguages as $lang) {
                    $objDatabase->Execute('
                        INSERT IGNORE INTO '.DBPREFIX.'module_'.$this->moduleTablePrefix.'_rel_entry_inputfields
                            SET `entry_id`="' . contrexx_raw2db($objEntries->fields['entry_id']) . '",
                                `lang_id`="' . contrexx_raw2db($lang['id']) . '",
                                `form_id`="' . contrexx_raw2db($objEntries->fields['form_id']) . '",
                                `field_id`="' . contrexx_raw2db($objEntries->fields['field_id']) . '",
                                `value`="' . contrexx_raw2db($objEntries->fields['value']) . '"'
                    );
                }
                $objEntries->MoveNext();
            }
        }
    }

    function saveEntry($arrData, $intEntryId=null)
    {
        global $_ARRAYLANG, $_CORELANG, $objDatabase, $_LANGID, $objInit;

        $objFWUser = \FWUser::getFWUserObject();
        $translationStatus = isset($arrData['translationStatus']) ? $arrData['translationStatus'] : array();

        //get data
        $intId = intval($intEntryId);
        $intFormId = intval($arrData['formId']);
        $strCreateDate = mktime();
        $strUpdateDate = mktime();
        $intUserId = intval($objFWUser->objUser->getId());
        $strLastIp = contrexx_addslashes($_SERVER['REMOTE_ADDR']);
        $strTransStatus = contrexx_addslashes(join(",", $translationStatus));


        //$arrCategories = explode(",",$arrData['selectedCategories']);
        //$arrLevels= explode("&",$arrData['selectedLevels']);


        if($objInit->mode == 'backend') {
            $intReadyToConfirm = 1;
        } else {
            if($this->arrSettings['settingsReadyToConfirm'] == 1) {
                $intReadyToConfirm = intval($arrData['readyToConfirm']);
            } else {
                $intReadyToConfirm = 1;
            }
        }

        switch($this->arrSettings['settingsEntryDisplaydurationValueType']) {
            case 1:
                $intDiffDay = $this->arrSettings['settingsEntryDisplaydurationValue'];
                $intDiffMonth = 0;
                $intDiffYear = 0;
                break;
            case 2:
                $intDiffDay = 0;
                $intDiffMonth = $this->arrSettings['settingsEntryDisplaydurationValue'];
                $intDiffYear = 0;
                break;
            case 3:
                $intDiffDay = 0;
                $intDiffMonth = 0;
                $intDiffYear = $this->arrSettings['settingsEntryDisplaydurationValue'];
                break;
        }

        if(empty($intId)) {
            if($objInit->mode == 'backend') {
                $intConfirmed = 1;
                $intActive = intval($arrData['status']) ? 1 : 0;
                $intShowIn = 3;
                $intDurationType =  intval($arrData['durationType']);
                $intDurationStart = $this->dateFromInput($arrData['durationStart']);
                $intDurationEnd = $this->dateFromInput($arrData['durationEnd']);
            } else {
                $intConfirmed = $this->arrSettings['settingsConfirmNewEntries'] == 1 ? 0 : 1;
                $intActive = 1;
                $intShowIn = 2;
                $intDurationType = $this->arrSettings['settingsEntryDisplaydurationType'];
                $intDurationStart = mktime();
                $intDurationEnd = mktime(0,0,0,date("m")+$intDiffMonth,date("d")+$intDiffDay,date("Y")+$intDiffYear);
            }

            $strValidateDate = $intConfirmed == 1 ? mktime() : 0;

            //insert new entry
            $objResult = $objDatabase->Execute("
                INSERT INTO ".DBPREFIX."module_".$this->moduleTablePrefix."_entries
                   SET `form_id`='".$intFormId."',
                       `create_date`='".$strCreateDate."',
                       `validate_date`='".$strValidateDate."',
                       `update_date`='".$strValidateDate."',
                       `added_by`='".$intUserId."',
                       `lang_id`='".$_LANGID."',
                       `hits`='0',
                       `last_ip`='".$strLastIp."',
                       `confirmed`='".$intConfirmed."',
                       `active`='".$intActive."',
                       `duration_type`='".$intDurationType."',
                       `duration_start`='".$intDurationStart."',
                       `duration_end`='".$intDurationEnd."',
                       `duration_notification`='0',
                       `translation_status`='".$strTransStatus."',
                       `ready_to_confirm`='".$intReadyToConfirm."',
                       `updated_by`=".$intUserId.",
                       `popular_hits`=0,
                       `popular_date`='".$strValidateDate."'");
            if (!$objResult) {
                return false;
            }
            $intId = $objDatabase->Insert_ID();
        } else {
            self::getEntries($intId);
            $intOldReadyToConfirm = $this->arrEntries[$intId]['entryReadyToConfirm'];

            if($objInit->mode == 'backend') {
                $intConfirmed = 1;
                $intShowIn = 3;

                $intDurationStart = $this->dateFromInput($arrData['durationStart']);
                $intDurationEnd = $this->dateFromInput($arrData['durationEnd']);

                $arrAdditionalQuery[] = "`duration_type`='". intval($arrData['durationType'])."', `duration_start`='". intval($intDurationStart)."',  `duration_end`='". intval($intDurationEnd)."'";

                $arrAdditionalQuery[] = "`active`='". (intval($arrData['status']) ? 1 : 0)."'";
            } else {
                $intConfirmed = $this->arrSettings['settingsConfirmUpdatedEntries'] == 1 ? 0 : 1;
                $intShowIn = 2;
                $arrAdditionalQuery = null;
            }

            $arrAdditionalQuery[] = " `updated_by`='".$intUserId."'";

            if(intval($arrData['userId']) != 0) {
                $arrAdditionalQuery[] = "`added_by`='".intval($arrData['userId'])."'";
            }

            if (!empty($arrData['durationResetNotification'])) {
                $arrAdditionalQuery[] = "`duration_notification`='0'";
            }

            $strAdditionalQuery = join(",", $arrAdditionalQuery);
            $strValidateDate = $intConfirmed == 1 ? mktime() : 0;

            $objUpdateEntry = $objDatabase->Execute("
                UPDATE ".DBPREFIX."module_".$this->moduleTablePrefix."_entries
                   SET `update_date`='".$strUpdateDate."',
                       `translation_status`='".$strTransStatus."',
                       `ready_to_confirm`='".$intReadyToConfirm."',
                       $strAdditionalQuery
                 WHERE `id`='$intId'");

            if (!$objUpdateEntry) {
                return false;
            }
            $objDeleteCategories = $objDatabase->Execute("DELETE FROM ".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_categories WHERE entry_id='".$intId."'");
            $objDeleteLevels = $objDatabase->Execute("DELETE FROM ".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_levels WHERE entry_id='".$intId."'");
        }


        //////////////////////
        // STORE ATTRIBUTES //
        //////////////////////

        $error = false;

        foreach ($this->getInputfields() as $arrInputfield) {
            // store selected category (field = category)
            if ($arrInputfield['id'] == 1) {
                $selectedCategories = isset($arrData['selectedCategories']) ? $arrData['selectedCategories'] : array();
                foreach ($selectedCategories as $intCategoryId) {
                    $objResult = $objDatabase->Execute("
                    INSERT INTO ".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_categories
                       SET `entry_id`='".intval($intId)."',
                           `category_id`='".intval($intCategoryId)."'");
                    if (!$objResult) {
                        \Message::error($objDatabase->ErrorMsg());
                        $error = true;
                    }
                }

                continue;
            }

            // store selected level (field = level)
            if ($arrInputfield['id'] == 2) {
                if ($this->arrSettings['settingsShowLevels'] == 1) {
                    $selectedLevels = isset($arrData['selectedLevels']) ? $arrData['selectedLevels'] : array();
                    foreach ($selectedLevels as $intLevelId) {
                        $objResult = $objDatabase->Execute("
                        INSERT INTO ".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_levels
                           SET `entry_id`='".intval($intId)."',
                               `level_id`='".intval($intLevelId)."'");
                        if (!$objResult) {
                            \Message::error($objDatabase->ErrorMsg());
                            $error = true;
                        }
                    }
                }

                continue;
            }

            // skip meta attributes or ones that are out of scope (frontend/backend)
            if (   // type = 'add_step'
                   $arrInputfield['type'] == 16
                   // type = 'label'
                || $arrInputfield['type'] == 18
                   // type = 'title'
                || $arrInputfield['type'] == 30
                   // show_in is neither FRONTEND or BACKEND ($intShowIn = 2|3) nor FRONTEND AND BACKEND (show_in=1)
                || ($arrInputfield['show_in'] != $intShowIn && $arrInputfield['show_in'] != 1)
            ) {
                continue;
            }

            // truncate attribute's data ($arrInputfield) from database if it's VALUE is not set (empty) or set to it's default value
            if (   empty($arrData[$this->moduleNameLC.'Inputfield'][$arrInputfield['id']])
                || $arrData[$this->moduleNameLC.'Inputfield'][$arrInputfield['id']] == $arrInputfield['default_value'][$_LANGID]
            ) {
                $objResult = $objDatabase->Execute("DELETE FROM ".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_inputfields WHERE entry_id='".$intId."' AND field_id='".intval($arrInputfield['id'])."'");
                if (!$objResult) {
                    \Message::error($objDatabase->ErrorMsg());
                    $error = true;
                }

                continue;
            }

            // initialize attribute
            $strType = $arrInputfield['type_name'];
            $strInputfieldClass = "\Cx\Modules\MediaDir\Model\Entity\MediaDirectoryInputfield".ucfirst($strType);
            try {
                $objInputfield = safeNew($strInputfieldClass, $this->moduleName);
            } catch (Exception $e) {
                \Message::error($e->getMessage());
                $error = true;

                continue;
            }

            // delete attribute's data of languages that are no longer in use
            $objDatabase->Execute("DELETE FROM ".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_inputfields WHERE entry_id='".$intId."' AND field_id = '".intval($arrInputfield['id'])."' AND lang_id NOT IN (".join(",", array_keys($this->arrFrontendLanguages)).")");

            // attribute is i18n
            foreach ($this->arrFrontendLanguages as $arrLang) {
                try {
                    $intLangId = $arrLang['id'];

                    // attribute is non-i18n
                    if ($arrInputfield['type_multi_lang'] == 0) {
                        $strInputfieldValue = $objInputfield->saveInputfield($arrInputfield['id'], $arrData[$this->moduleNameLC.'Inputfield'][$arrInputfield['id']]);
                        $objResult = $objDatabase->Execute("
                            INSERT INTO ".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_inputfields
                               SET `entry_id`='".intval($intId)."',
                                   `lang_id`='".intval($intLangId)."',
                                   `form_id`='".intval($intFormId)."',
                                   `field_id`='".intval($arrInputfield['id'])."',
                                   `value`='".contrexx_raw2db($strInputfieldValue)."'
                            ON DUPLICATE KEY
                                UPDATE `value`='".contrexx_raw2db($strInputfieldValue)."'");
                        if (!$objResult) {
                            throw new \Exception($objDatabase->ErrorMsg());
                        }

                        continue;
                    }

                    // if the attribute is of type dynamic (meaning it can have an unlimited set of childs (references))
                    if ($arrInputfield['type_dynamic'] == 1) {
                        $arrDefault = array();
                        foreach ($arrData[$this->moduleNameLC.'Inputfield'][$arrInputfield['id']][0] as $intKey => $arrValues) {
                            $arrNewDefault = $arrData[$this->moduleNameLC.'Inputfield'][$arrInputfield['id']][$_LANGID][$intKey];
                            $arrOldDefault = $arrData[$this->moduleNameLC.'Inputfield'][$arrInputfield['id']]['old'][$intKey];
                            $arrNewValues = $arrData[$this->moduleNameLC.'Inputfield'][$arrInputfield['id']][$intLangId][$intKey];
                            foreach ($arrValues as $strKey => $strMasterValue) {
                                if ($intLangId == $_LANGID) {
                                    if ($arrNewDefault[$strKey] != $strMasterValue) {
                                        if ($strMasterValue != $arrOldDefault[$strKey] && $arrNewDefault[$strKey] == $arrOldDefault[$strKey]) {
                                            $arrDefault[$intKey][$strKey] = $strMasterValue;
                                        } else {
                                            $arrDefault[$intKey][$strKey] = $arrNewDefault[$strKey];
                                        }
                                    } else {
                                        $arrDefault[$intKey][$strKey] = $arrNewDefault[$strKey];
                                    }
                                } else {
                                    if ($arrNewValues[$strKey] == '') {
                                        $arrDefault[$intKey][$strKey] = $strMasterValue;
                                    } else {
                                        $arrDefault = $arrData[$this->moduleNameLC.'Inputfield'][$arrInputfield['id']][$intLangId];
                                    }
                                }
                            }
                            $strDefault = $arrDefault;
                        }
                        $strInputfieldValue = $objInputfield->saveInputfield($arrInputfield['id'], $strDefault, $intLangId);
                    } else if (
                        // attribute's VALUE of certain frontend language ($intLangId) is empty
                        empty($arrData[$this->moduleNameLC.'Inputfield'][$arrInputfield['id']][$intLangId])
                        // or the process is parsing the user's current interface language
                        || $intLangId == $_LANGID
                    ) {
                        $strMaster =
                            (isset($arrData[$this->moduleNameLC.'Inputfield'][$arrInputfield['id']][0])
                              ? $arrData[$this->moduleNameLC.'Inputfield'][$arrInputfield['id']][0]
                              : null);
                        $strNewDefault = isset($arrData[$this->moduleNameLC.'Inputfield'][$arrInputfield['id']][$_LANGID])
                                            ? $arrData[$this->moduleNameLC.'Inputfield'][$arrInputfield['id']][$_LANGID]
                                            : '';
                        if ($strNewDefault != $strMaster) {
                            $strDefault = $strMaster;
                        } else {
                            $strDefault = isset($arrData[$this->moduleNameLC.'Inputfield'][$arrInputfield['id']][$intLangId])
                                            ? $arrData[$this->moduleNameLC.'Inputfield'][$arrInputfield['id']][$intLangId]
                                            : '';
                        }
                        $strInputfieldValue = $objInputfield->saveInputfield($arrInputfield['id'], $strDefault, $intLangId);
                    } else {
                        // regular attribute get parsed
                        $strInputfieldValue = $objInputfield->saveInputfield($arrInputfield['id'], $arrData[$this->moduleNameLC.'Inputfield'][$arrInputfield['id']][$intLangId], $intLangId);
                    }

                    $objResult = $objDatabase->Execute("
                        INSERT INTO ".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_inputfields
                           SET `entry_id`='".intval($intId)."',
                               `lang_id`='".intval($intLangId)."',
                               `form_id`='".intval($intFormId)."',
                               `field_id`='".intval($arrInputfield['id'])."',
                               `value`='".contrexx_raw2db($strInputfieldValue)."'
                        ON DUPLICATE KEY
                            UPDATE `value`='".contrexx_raw2db($strInputfieldValue)."'");
                    if (!$objResult) {
                        throw new \Exception($objDatabase->ErrorMsg());
                    }
                } catch (Exception $e) {
                    \Message::error($e->getMessage());
                    $error = true;
                }
            }
        }

        if(empty($intEntryId)) {
            if($intReadyToConfirm == 1) {
                new MediaDirectoryMail(1, $intId, $this->moduleName);
            }
            new MediaDirectoryMail(2, $intId, $this->moduleName);
        } else {
            if($intReadyToConfirm == 1 && $intOldReadyToConfirm == 0) {
                new MediaDirectoryMail(1, $intId, $this->moduleName);
            }
            new MediaDirectoryMail(6, $intId, $this->moduleName);
        }

        return $intId;
    }



    function deleteEntry($intEntryId)
    {
        global $_ARRAYLANG, $_CORELANG, $objDatabase;

        $objMail = new MediaDirectoryMail(5, $intEntryId, $this->moduleName);

        //delete entry
        $objDeleteEntry = $objDatabase->Execute("DELETE FROM ".DBPREFIX."module_".$this->moduleTablePrefix."_entries WHERE `id`='".intval($intEntryId)."'");

        if($objDeleteEntry !== false) {
            //delete inputfields
            foreach ($this->getInputfields() as $key => $arrInputfield) {
                if($arrInputfield['id'] != 1 && $arrInputfield['id'] != 2) {

                    $strType = $arrInputfield['type_name'];
                    $strInputfieldClass = "\Cx\Modules\MediaDir\Model\Entity\MediaDirectoryInputfield".ucfirst($strType);

                    try {
                        $objInputfield = safeNew($strInputfieldClass, $this->moduleName);

                        if(!$objInputfield->deleteContent(intval($intEntryId), intval($arrInputfield['id']))) {
                            return false;
                        }
                    } catch (Exception $e) {
                        echo "Error: ".$e->getMessage();
                    }
                }
            }

            //delete categories
            $objDeleteCategories = $objDatabase->Execute("DELETE FROM ".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_categories WHERE `entry_id`='".intval($intEntryId)."'");

            //delete levels
            $objDeleteLevels = $objDatabase->Execute("DELETE FROM ".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_levels WHERE `entry_id`='".intval($intEntryId)."'");
        } else {
            return false;
        }

        return true;
    }



    function confirmEntry($intEntryId)
    {
        global $_ARRAYLANG, $_CORELANG, $objDatabase;

        $objConfirmEntry = $objDatabase->Execute("
            UPDATE
                ".DBPREFIX."module_".$this->moduleTablePrefix."_entries
            SET
                `confirmed`='1',
                `active`='1',
                `validate_date`='".time()."'
            WHERE
                `id`='".intval($intEntryId)."'
        ");

        if($objConfirmEntry !== false) {
            $objMail = new MediaDirectoryMail(3, $intEntryId, $this->moduleName);
            return true;
        } else {
           return false;
        }
    }



    function updateHits($intEntryId)
    {
        global $_ARRAYLANG, $_CORELANG, $objDatabase;

        $intHits        = intval($this->arrEntries[intval($intEntryId)]['entryHits']);
        $intPopularHits = intval($this->arrEntries[intval($intEntryId)]['entryPopularHits']);
        $strPopularDate = $this->arrEntries[intval($intEntryId)]['entryPopularDate'];
        $intPopularDays = intval($this->arrSettings['settingsPopularNumRestore']);
        $strLastIp      = $this->arrEntries[intval($intEntryId)]['entryLastIp'];
        $strNewIp       = contrexx_addslashes($_SERVER['REMOTE_ADDR']);

        $strToday  = mktime(0, 0, 0, date("m")  , date("d"), date("Y"));
        $tempDays  = date("d",$strPopularDate);
        $tempMonth = date("m",$strPopularDate);
        $tempYear  = date("Y",$strPopularDate);

        $strPopularEndDate  = mktime(0, 0, 0, $tempMonth, $tempDays+$intPopularDays,  $tempYear);

        if ($strLastIp != $strNewIp) {
            if ($strToday >= $strPopularEndDate) {
                $strNewPopularDate  = $strToday;
                $intPopularHits     = 1;
            } else {
                $strNewPopularDate  = $strPopularDate;
                $intPopularHits++;
            }

            $intHits++;

            $objResult = $objDatabase->Execute("UPDATE
                                                    ".DBPREFIX."module_".$this->moduleTablePrefix."_entries
                                                SET
                                                    hits='".$intHits."',
                                                    popular_hits='".$intPopularHits."',
                                                    popular_date='".$strNewPopularDate."',
                                                    last_ip='".$strNewIp."'
                                                WHERE
                                                    id='".intval($intEntryId)."'
                                               ");
        }
    }



    function countEntries()
    {
        return $this->recordCount;
    }



    function getUsers($intEntryId=null)
    {
        global $objDatabase;

// TODO: replace by FWUser::getParsedUserTitle()
        $strDropdownUsers = '<select name="userId"style="width: 302px">';
        $objFWUser = \FWUser::getFWUserObject();

        if ($objUser = $objFWUser->objUser->getUsers(null,null,null,array('username'))) {
            while (!$objUser->EOF) {
                if(intval($objUser->getID()) == intval($this->arrEntries[$intEntryId]['entryAddedBy'])) {
                    $strSelected = 'selected="selected"';
                } else {
                    $strSelected = '';
                }

                $strDropdownUsers .= '<option value="'.intval($objUser->getID()).'" '.$strSelected.' >'.contrexx_raw2xhtml($objUser->getUsername()).'</option>';
                $objUser->next();
            }
        }

        $strDropdownUsers .= '</select>';

        return $strDropdownUsers;
    }

    public function parseCategoryLevels($intType, $intEntryId=null, $objTpl) {
        $categoryId = null;
        $levelId = null;
        if ($intType == 1) {
            // categories
            $objCategoriesLevels = $this->getCategories($intEntryId);
            $list = 'CATEGORY';
        } else {
            // levels
            $objCategoriesLevels = $this->getLevels($intEntryId);
            $list = 'LEVEL';
        }

        if (!$objTpl->blockExists('mediadir_' . strtolower($list))) {
            return false;
        }

        if ($objCategoriesLevels !== false && $objCategoriesLevels->RecordCount() > 0) {
            while(!$objCategoriesLevels->EOF) {
                // assign ID to related variable based on the requested type (category or level)
                if ($intType == 1) {
                    $categoryId = $objCategoriesLevels->fields['elm_id'];
                } else {
                    $levelId = $objCategoriesLevels->fields['elm_id'];
                }

                $objTpl->setVariable(array(
                    $this->moduleLangVar . '_ENTRY_' . $list . '_ID'        => $objCategoriesLevels->fields['elm_id'],
                    $this->moduleLangVar . '_ENTRY_' . $list . '_NAME'      => contrexx_raw2xhtml($objCategoriesLevels->fields['elm_name']),
                    $this->moduleLangVar . '_ENTRY_' . $list . '_LINK'      => '<a href="'.$this->getAutoSlugPath(null, $categoryId, $levelId).'">'.contrexx_raw2xhtml($objCategoriesLevels->fields['elm_name']).'</a>',
                    $this->moduleLangVar . '_ENTRY_' . $list . '_LINK_SRC'  => $this->getAutoSlugPath(null, $categoryId, $levelId),
                ));
                $objTpl->parse('mediadir_' . strtolower($list));
                $objCategoriesLevels->MoveNext();
            }
        } else {
            $objTpl->hideBlock('mediadir_' . strtolower($list));
        }
    }


    protected function getCategories($intEntryId = null) {
        global $objDatabase, $_LANGID;
        $query = "SELECT
            cat_rel.`category_id` AS `elm_id`,
            cat_name.`category_name` AS `elm_name`
          FROM
            ".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_categories AS cat_rel
          INNER JOIN
            ".DBPREFIX."module_".$this->moduleTablePrefix."_categories_names AS cat_name
          ON
            cat_rel.`category_id` = cat_name.`category_id`
          WHERE
            cat_rel.`entry_id` = ?
          AND
            cat_name.`lang_id` = ?
          ORDER BY
            cat_name.`category_name` ASC
          ";

        return $objDatabase->Execute($query, array($intEntryId, $_LANGID));
    }


    protected function getLevels($intEntryId = null) {
        global $objDatabase, $_LANGID;
        $query = "SELECT
            level_rel.`level_id` AS `elm_id`,
            level_name.`level_name` AS `elm_name`
          FROM
            ".DBPREFIX."module_".$this->moduleTablePrefix."_rel_entry_levels AS level_rel
          INNER JOIN
            ".DBPREFIX."module_".$this->moduleTablePrefix."_level_names AS level_name
          ON
            level_rel.`level_id` = level_name.`level_id`
          WHERE
            level_rel.`entry_id` = ?
          AND
            level_name.`lang_id` = ?
          ORDER BY
            level_name.`level_name` ASC
          ";

        return $objDatabase->Execute($query, array($intEntryId, $_LANGID));
    }


    function getCategoriesLevels($intType, $intEntryId=null)
    {
        if ($intType == 1) {//categories
            $objEntryCategoriesLevels = $this->getCategories($intEntryId);
        } else {//levels
            $objEntryCategoriesLevels = $this->getLevels($intEntryId);
        }

        if ($objEntryCategoriesLevels !== false) {
            $list = '<ul>';
            while (!$objEntryCategoriesLevels->EOF) {
                $id = intval($objEntryCategoriesLevels->fields['elm_id']);
                $name = htmlspecialchars($objEntryCategoriesLevels->fields['elm_name'], ENT_QUOTES, CONTREXX_CHARSET);

                $url = null;
                if ($intType == 1) {
                    //categories
                    $url = $this->getAutoSlugPath(null, $id);
                } else {
                    //levels
                    $url = $this->getAutoSlugPath(null, null, $id);
                }

                $list .= '<li>';
                $list .= !empty($url) ? '<a href="'.$url.'">'.$name.'</a>' : $name;
                $list .= '</li>';
                $objEntryCategoriesLevels->MoveNext();
            }
            $list .= '</ul>';
        }

        return $list;
    }


    function saveOrder($arrData) {
        global $objDatabase;

        foreach($arrData['entriesOrder'] as $intEntryId => $intEntryOrder) {
            $objRSEntryOrder = $objDatabase->Execute("UPDATE ".DBPREFIX."module_".$this->moduleTablePrefix."_entries SET `order`='".intval($intEntryOrder)."' WHERE `id`='".intval($intEntryId)."'");

            if ($objRSEntryOrder === false) {
                return false;
            }
        }

        return true;
    }


    function setDisplaydurationNotificationStatus($intEntryId, $bolStatus)
    {
        global $objDatabase;

        $objResult = $objDatabase->Execute("UPDATE ".DBPREFIX."module_".$this->moduleTablePrefix."_entries SET duration_notification='".intval($bolStatus)."' WHERE id='".intval($intEntryId)."'");
    }

    /**
     * Takes a date in the format dd.mm.yyyyand returns it's representation as mktime()-timestamp.
     *
     * @param $value string
     * @return long timestamp
     */
    function dateFromInput($value) {
        if($value === null || $value === '') //not set POST-param passed, return null for the other functions to know this
            return null;
        $arrDate = array();
        if (preg_match('/^([0-9]{1,2})\.([0-9]{1,2})\.([0-9]{1,4})/', $value, $arrDate)) {
            return mktime(0, 0, 0, intval($arrDate[2]), intval($arrDate[1]), intval($arrDate[3]));
        } else {
            return time();
        }
    }

    /**
     * Searches the content and returns an array that is built as needed by the search module.
     *
     * @param string $searchTerm
     *
     * @return array
     */
    public function searchResultsForSearchModule($searchTerm)
    {
        $em = \Env::get('cx')->getDb()->getEntityManager();
        $pageRepo = $em->getRepository('Cx\Core\ContentManager\Model\Entity\Page');

        // only list results in case the associated page of the module is active
        $page = $pageRepo->findOneBy(array(
            'module' => 'MediaDir',
            'lang'   => FRONTEND_LANG_ID,
            'type'   => \Cx\Core\ContentManager\Model\Entity\Page::TYPE_APPLICATION,
        ));

        //If page is not exists or page is inactive then return empty result
        if (!$page || !$page->isActive()) {
            return array();
        }

        //get the config site values
        \Cx\Core\Setting\Controller\Setting::init('Config', 'site','Yaml');
        $coreListProtectedPages   = \Cx\Core\Setting\Controller\Setting::getValue('coreListProtectedPages','Config');
        $searchVisibleContentOnly = \Cx\Core\Setting\Controller\Setting::getValue('searchVisibleContentOnly','Config');
        //get the config otherConfigurations value
        \Cx\Core\Setting\Controller\Setting::init('Config', 'otherConfigurations','Yaml');
        $searchDescriptionLength  = \Cx\Core\Setting\Controller\Setting::getValue('searchDescriptionLength','Config');

        $hasPageAccess = true;
        $isNotVisible = ($searchVisibleContentOnly == 'on') && !$page->isVisible();
        if ($coreListProtectedPages == 'off' && $page->isFrontendProtected()) {
            $hasPageAccess = \Permission::checkAccess($page->getFrontendAccessId(), 'dynamic', true);
        }

        //If the page is invisible and frontend access is denied then return empty result
        if ($isNotVisible || !$hasPageAccess) {
            return array();
        }

        //get the media directory entry by the search term
        $this->getEntries(null, null, null, $searchTerm, null, null, true);

        //if no entries found then return empty result
        if (empty($this->arrEntries)) {
            return array();
        }

        $results            = array();
        $formEntries        = array();
        $defaultEntries     = null;
        $numOfEntries       = intval($this->arrSettings['settingsPagingNumEntries']);
        foreach ($this->arrEntries as $entry) {
            $entryForm     = $this->getFormDefinitionOfEntry($entry['entryId']);

            try {
                $pageUrlResult = $this->getDetailUrlOfEntry($entry, true);
            } catch (MediaDirectoryEntryException $e) {
                // if entry has no page to be listed on, then dont show it in the result
                continue;
            }

            if (!$pageUrlResult) {
                continue;
            }

            //Get the search results title and content from the form context field 'title' and 'content'
            $title          = current($entry['entryFields']);
            $content        = '';
            $objInputfields = new MediaDirectoryInputfield($entry['entryFormId'], false, $entry['entryTranslationStatus'], $this->moduleName);
            $inputFields    = $objInputfields->getInputfields();
            foreach ($inputFields as $arrInputfield) {
                $contextType = isset($arrInputfield['context_type']) ? $arrInputfield['context_type'] : '';
                if (!in_array($contextType, array('title', 'content'))) {
                    continue;
                }
                $strType = isset($arrInputfield['type_name']) ? $arrInputfield['type_name'] : '';
                $strInputfieldClass = "\Cx\Modules\MediaDir\Model\Entity\MediaDirectoryInputfield" . ucfirst($strType);
                try {
                    $objInputfield        = safeNew($strInputfieldClass, $this->moduleName);
                    $arrTranslationStatus = (contrexx_input2int($arrInputfield['type_multi_lang']) == 1)
                                            ? $entry['entryTranslationStatus']
                                            : null;
                    $arrInputfieldContent = $objInputfield->getContent($entry['entryId'], $arrInputfield, $arrTranslationStatus);
                    if (\Cx\Core\Core\Controller\Cx::instanciate()->getMode() == \Cx\Core\Core\Controller\Cx::MODE_FRONTEND && \Cx\Core\Setting\Controller\Setting::getValue('blockStatus', 'Config')) {
                        $arrInputfieldContent[$this->moduleLangVar.'_INPUTFIELD_VALUE'] = preg_replace('/\\[\\[(BLOCK_[A-Z0-9_-]+)\\]\\]/', '{\\1}', $arrInputfieldContent[$this->moduleLangVar.'_INPUTFIELD_VALUE']);
                        \Cx\Modules\Block\Controller\Block::setBlocks($arrInputfieldContent[$this->moduleLangVar.'_INPUTFIELD_VALUE'], \Cx\Core\Core\Controller\Cx::instanciate()->getPage());
                    }
                } catch (\Exception $e) {
                    \DBG::log($e->getMessage());
                    continue;
                }
                $inputFieldValue = $arrInputfieldContent[$this->moduleConstVar . '_INPUTFIELD_VALUE'];
                if (empty($inputFieldValue)) {
                    continue;
                }
                if ($contextType == 'title') {
                    $title = $inputFieldValue;
                } elseif ($contextType == 'content') {
                    $content = \Cx\Core_Modules\Search\Controller\Search::shortenSearchContent(
                                    $inputFieldValue,
                                    $searchDescriptionLength
                                );
                }
            }

            $results[] = array(
                'Score'   => 100,
                'Title'   => html_entity_decode(contrexx_strip_tags($title), ENT_QUOTES, CONTREXX_CHARSET),
                'Content' => $content,
                'Link'    => $pageUrlResult->toString()
            );
        }
        return $results;
    }

    /**
     * Get the data of entry's associated MediaDirectoryForm object
     *
     * @return  array   Data of entry's associated MediaDirectoryForm object
     */
    public function getFormDefinition() {
        return $this->getFormDefinitionOfEntry($this->intEntryId);
    }

    /**
     * Get the data of a MediaDirectoryForm object an entry is based on
     *
     * @param   integer ID of entry to return the associated MediaDirectoryForm object data from
     * @return  array   Data of entry's associated MediaDirectoryForm object
     */
    public function getFormDefinitionOfEntry($entryId) {
        if (!isset($this->objForm)) {
            $this->objForm = new MediaDirectoryForm(null, $this->moduleName);
        }

        $formId = $this->arrEntries[$entryId]['entryFormId'];
        return $this->objForm->arrForms[$formId];
    }
}
