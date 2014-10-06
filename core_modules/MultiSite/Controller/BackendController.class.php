<?php
/**
 * Specific BackendController for this Component. Use this to easily create a backend view
 *
 * @copyright   Comvation AG
 * @author      Michael Ritter <michael.ritter@comvation.com>
 * @package     contrexx
 * @subpackage  modules_skeleton
 */

namespace Cx\Core_Modules\MultiSite\Controller;

/**
 * Specific BackendController for this Component. Use this to easily create a backend view
 *
 * @copyright   Comvation AG
 * @author      Michael Ritter <michael.ritter@comvation.com>
 * @package     contrexx
 * @subpackage  modules_skeleton
 */
class BackendController extends \Cx\Core\Core\Model\Entity\SystemComponentBackendController {
     
    /**
     * Returns a list of available commands (?act=XY)
     * @return array List of acts
     */
    public function getCommands() {
        switch (\Cx\Core\Setting\Controller\Setting::getValue('mode')) {
            case ComponentController::MODE_SERVICE:
                return array('statistics','settings'=> array('codebases'));
                break;

            case ComponentController::MODE_MANAGER:
                return array('statistics','settings'=> array('email','website_templates','website_service_servers',));
                break;

            case ComponentController::MODE_HYBRID:
                return array('statistics','settings'=> array('email','codebases'));
                break;

            case ComponentController::MODE_NONE:
            case ComponentController::MODE_WEBSITE:
            default:
                return array();
                break;
        }
    }
    
    /**
     * Use this to parse your backend page
     * 
     * You will get the template located in /View/Template/{CMD}.html
     * You can access Cx class using $this->cx
     * To show messages, use \Message class
     * @param \Cx\Core\Html\Sigma $template Template for current CMD
     * @param array $cmd CMD separated by slashes
     */
    public function parsePage(\Cx\Core\Html\Sigma $template, array $cmd) {
        global $_ARRAYLANG;

        switch (\Cx\Core\Setting\Controller\Setting::getValue('mode')) {
            case ComponentController::MODE_NONE:
            case ComponentController::MODE_WEBSITE:
                $cmd = array('settings');
                break;

            default:
                break;
        }

        switch (current($cmd)) {
            case 'settings':
                $this->parseSectionSettings($template, $cmd);
                break;

            case 'statistics':
                $this->parseSectionStatistics($template, $cmd);
                break;

            default:
                $this->parseSectionWebsites($template, $cmd);
                break;
        }
    }

    public function parseSectionSettings(\Cx\Core\Html\Sigma $template, array $cmd) {
        global $_ARRAYLANG;

        $config = \Env::get('config');
        if (!empty($cmd[1]) && $cmd[1]=='email') {   
            $template->setVariable(array(
                'TABLE' => \Cx\Core\MailTemplate\Controller\MailTemplate::adminView('MultiSite', 'nonempty', $config['corePagingLimit'], 'settings/email')->get(),
            ));
        } elseif(!empty($cmd[1]) && $cmd[1]=='website_service_servers'){
            $websiteServiceServers = \Env::get('em')->getRepository('Cx\Core_Modules\MultiSite\Model\Entity\WebsiteServiceServer')->findAll();
            if(empty($websiteServiceServers)){
                $websiteServiceServers = new \Cx\Core_Modules\MultiSite\Model\Entity\WebsiteServiceServer();
            }
            $view = new \Cx\Core\Html\Controller\ViewGenerator($websiteServiceServers,
                array(
                    'header' => $_ARRAYLANG['TXT_CORE_MODULE_MULTISITE_ACT_SETTINGS_WEBSITE_SERVICE_SERVERS'],
                    'functions' => array(
                        'edit' => true,
                        'add' => true,
                        'delete' => true,
                        'sorting' => true,
                        'paging' => true,       // cannot be turned off yet
                        'filtering' => false,   // this does not exist yet
                    ),
                    'fields' => array(
                        'id' => array(
                            'showOverview' => false,
                        ),
                        'hostname' => array(
                            'header' => 'Hostname',
                            'table' => array(
                                 'parse' => function($value) {
                                    $websiteServiceServerRepository = \Env::get('em')->getRepository('Cx\Core_Modules\MultiSite\Model\Entity\WebsiteServiceServer');
                                    $websiteServiceServer           = $websiteServiceServerRepository->findOneBy(array('hostname' => $value));
                                    $response   = JsonMultiSite::executeCommandOnServiceServer('ping', array(), $websiteServiceServer);
                                    if ($response && $response->status == 'success' && $response->data->status == 'success'){
                                        $statusIcon       = '<img src="'. '../core/Core/View/Media/icons/status_green.gif"'. ' alt='."status_green".'/>';
                                        $hostNameStatus   = $statusIcon."&nbsp;".$value."&nbsp;".'<span class="'. 'icon-info tooltip-trigger"'. '></span><span class="'. 'tooltip-message"'. '> Bidirectional communication successfully established </span>';
                                        return $hostNameStatus;
                                    } else {
                                       $statusIcon      = '<img src="'. '../core/Core/View/Media/icons/status_red.gif"'. ' alt='."status_red".'/>';
                                       $hostNameStatus  = $statusIcon."&nbsp;".$value."&nbsp;".'<span class="'. 'icon-info tooltip-trigger"'. '></span><span class="'. 'tooltip-message"'. '>'.$response->data->message.'</span>';
                                       return $hostNameStatus;
                                    }
                                 },
                             ),
                        ),
                        'label' => array(
                            'header' => 'Name',
                        ),
                        'secretKey' => array(
                            'showOverview' => false,
                        ),
                        'installationId' => array(
                            'showOverview' => false,
                        ),
                        'httpAuthMethod' => array(
                            'showOverview' => false,
                        ),
                        'httpAuthUsername' => array(
                            'showOverview' => false,
                        ),
                        'httpAuthPassword' => array(
                            'showOverview' => false,
                        ),
                    )
                )
            );
            $template->setVariable('TABLE', $view->render());
        } elseif (!empty($cmd[1]) && $cmd[1]=='codebases') {
            $codeBasePath   = \Cx\Core\Setting\Controller\Setting::getValue('codeBaseRepository');
            $codebaseScannedDir = array_values(array_diff(scandir($codeBasePath), array('..', '.')));
            $codebaseRepositoryDataArray[] = array(
                'Version_number'  => $config['coreCmsVersion'],
                'default'         => '',
                'Code_Name'       => $config['coreCmsCodeName'],
                'Release_Date'    => date(ASCMS_DATE_FORMAT_DATE, $config['coreCmsReleaseDate']),
                'Path'            => \Env::get('cx')->getCodeBaseDocumentRootPath() 
            );
            
            foreach ($codebaseScannedDir as $value) {
                $configFile = $codeBasePath.'/'.$value.'/installer/config/config.php';
                if (file_exists($configFile)) {
                    $configContents = file_get_contents($codeBasePath.'/'.$value.'/' .$scannedDir[0]. '/installer/config/config.php');
                    if (preg_match_all('/\\$_CONFIG\\[\'(.*?)\'\\]\s+\=\s+\'(.*?)\';/s', $configContents, $matches)) {
                            $configValues = array_combine($matches[1], $matches[2]);
                            $codebaseRepositoryDataArray[] = array(
                                'Version_number' => $configValues['coreCmsVersion'],
                                'default'        => $value,
                                'Code_Name'      => $configValues['coreCmsCodeName'],
                                'Release_Date'   => $configValues['coreCmsReleaseDate'],
                                'Path'           => $codeBasePath.'/'.$value
                                );
                    }
                    
                }          
            }
            
            $codebaseRepositoryDataSet = new \Cx\Core_Modules\Listing\Model\Entity\DataSet($codebaseRepositoryDataArray);
            $codeBase = new \Cx\Core\Html\Controller\ViewGenerator($codebaseRepositoryDataSet,
                array(
                    'header' => $_ARRAYLANG['TXT_CORE_MODULE_MULTISITE_ACT_SETTINGS_CODEBASES'],
                    'fields' => array(
                        'Version_number' => array(
                            'header' => 'Version number'
                         ),
                        'default' => array(
                            'header'  => 'Default',
                            'table' => array(
                                'parse' => function($value) {
                                    $checked = ($value == \Cx\Core\Setting\Controller\Setting::getValue('defaultCodeBase')) ? 'checked="checked"' : '';
                                    $content = '<input type = "radio" class="defaultCodeBase" name = "defaultCodeBase" '.$checked.' value ="'.$value.'"/>';
                                    return $content;
                                },
                        ),
                        ),
                        'Code_Name' => array(
                            'header' => 'Code Name',
                        ),
                        'Release_Date' => array(
                            'header' => 'Release Date',
                        ),
                        'Path' => array(
                            'header' => 'Path'
                        )
                    )
                )
            );
            $template->setVariable('TABLE', $codeBase->render());
            
        } else if (!empty($cmd[1]) && $cmd[1]=='website_templates') {
            $websiteTemplates = \Env::get('em')->getRepository('Cx\Core_Modules\MultiSite\Model\Entity\WebsiteTemplate')->findAll();
           
            if (empty($websiteTemplates)) {
                $websiteTemplates = new \Cx\Core_Modules\MultiSite\Model\Entity\WebsiteTemplate();
            }
            $websiteTemplatesView = new \Cx\Core\Html\Controller\ViewGenerator($websiteTemplates, 
                array(
                    'header' => $_ARRAYLANG['TXT_CORE_MODULE_MULTISITE_ACT_SETTINGS_WEBSITE_TEMPLATES'],
                    'functions' => array(
                        'edit' => true,
                        'add' => true,
                        'delete' => true,
                        'sorting' => true,
                        'paging' => true,       
                        'filtering' => false,   
                    ),
                    'fields' => array(
                        'id' => array(
                            'showOverview' => false,
                        ),
                        'codeBase' => array(
                            'header' => 'codeBase',
                        ),
                        'licensedComponents' => array(
                            'header' => 'licensedComponents',
                        ),
                        'licenseMessage' => array(
                            'header' => 'licenseMessage',
                        )
                    )
                )
            );
            $template->setVariable('TABLE', $websiteTemplatesView->render());
        }else{
            $this->settings($template);
        }
    }

    public function parseSectionStatistics(\Cx\Core\Html\Sigma $template, array $cmd) {
        //dynamic use websites path
        //self::errorHandler();
        //\Cx\Core\Setting\Controller\Setting::init('MultiSite', 'config');
        $websitesPath=\Cx\Core\Setting\Controller\Setting::getValue('websitePath');
        // this a very ugly BETA with no much comment and wrong english in it
        $instRepo = \Env::get('em')->getRepository('\Cx\Core_Modules\MultiSite\Model\Entity\Website');
        $websites = new \Cx\Core_Modules\Listing\Model\Entity\DataSet($instRepo->findAll());
        $html = '
            <p>
                Heute: ' . 
                $instRepo->findWebsitesBetween(
                    $websitesPath,
                    new \DateTime(date('Y-m-d 00:00:00')),
                    new \DateTime(date('Y-m-d 23:59:59'))
                ) . ' Accounts<br />
                Total: ' . $websites->size() . ' Accounts
            </p>
            <p><form>';
        /*$filterTable = new \BackendTable(array('width'=>'100%'));
        $filterTable->setCellContents(0, 0, 'Filter', 'th');
        $filterTable->setCellContents(1, 0, '
            <input type="datetime" class="datetime" name="startdate" />
            <input type="datetime" class="datetime" name="enddate" />
            <input type="submit" class="button" name="submit" />
        ', 'td', 0, false);
        $html .= $filterTable;*/
        $html .= '
            </form></p>
            <table border="1" style="border-collapse: collapse;" cellpadding="2">
                <tr>
                    <th>Jahr</th>
                    <th>Total</th>
                    <th>Jan</th>
                    <th>Feb</th>
                    <th>Mar</th>
                    <th>Apr</th>
                    <th>Mai</th>
                    <th>Jun</th>
                    <th>Jul</th>
                    <th>Aug</th>
                    <th>Sep</th>
                    <th>Oct</th>
                    <th>Nov</th>
                    <th>Dec</th>
                </tr>';
        for ($year = '2013'; $year <= date('Y'); $year++) {
            $html .= '
                <tr>
                    <td>' . $year . '</td>
                    <td>' . 
            $instRepo->findWebsitesBetween(
                $websitesPath,
                new \DateTime(date($year . '-01-01 00:00:00')),
                new \DateTime(date($year . '-12-31 23:59:59'))
            ) . '
                    </td>';
            for ($month = 1; $month <= 12; $month++) {
                if ($month < 10) {
                    $month = '0'.$month;
                }
                $html .= '
                    <td>' . 
                $instRepo->findWebsitesBetween(
                    $websitesPath,
                    new \DateTime(date($year . '-' . $month . '-01 00:00:00')),
                    new \DateTime(date($year . '-' . $month . '-t 23:59:59'))
                ) . '
                    </td>';
            }
            $html .= '
                </tr>';
        }
        $html .= '
            </table>';
        $template->setVariable(array(
            'TABLE' => $html,
        ));
    }
    
    public function parseSectionWebsites(\Cx\Core\Html\Sigma $template, array $cmd) {
        $websites = \Env::get('em')->getRepository('\Cx\Core_Modules\MultiSite\Model\Entity\Website')->findAll();
        $view = new \Cx\Core\Html\Controller\ViewGenerator($websites, array(
            'header' => 'Websites',
            'functions' => array(
                'edit' => in_array(\Cx\Core\Setting\Controller\Setting::getValue('mode'), array(ComponentController::MODE_MANAGER, ComponentController::MODE_HYBRID)),
                'delete' => in_array(\Cx\Core\Setting\Controller\Setting::getValue('mode'), array(ComponentController::MODE_MANAGER, ComponentController::MODE_HYBRID)),
                'sorting' => true,
                'paging' => true,       // cannot be turned off yet
                'filtering' => false,   // this does not exist yet
                'actions' => function($rowData) {
                                return \Cx\Core_Modules\MultiSite\Controller\BackendController::executeSql($rowData);
                             }
            ),
            'fields' => array(
                'id' => array('showOverview' => false),
                'name' => array(
                    'header' => 'TXT_MULTISITE_SITE_ADDRESS',
                    'readonly' => true,
                    'table' => array(
                        'parse' => function($value) {
                            $websiteUrl = '<a href="'.ComponentController::getApiProtocol() . $value . '.' . \Cx\Core\Setting\Controller\Setting::getValue('multiSiteDomain').'" target="_blank">' . $value . '</a>';
                            return $websiteUrl;
                        },
                    ),
                ),
                'status' => array('header' => 'Status',
                    'table' => array(
                        'parse' => function($value, $arrData) {
                            // changing a Website's status must only be allowed from within the MANAGER (or HYBRID)
                            if (!in_array(\Cx\Core\Setting\Controller\Setting::getValue('mode'), array(ComponentController::MODE_MANAGER, ComponentController::MODE_HYBRID))) {
                                return $value;
                            }
                            $stateOnline = \Cx\Core_Modules\MultiSite\Model\Entity\Website::STATE_ONLINE;
                            $stateOffline = \Cx\Core_Modules\MultiSite\Model\Entity\Website::STATE_OFFLINE;
                            $stateOnlineSelected = ($value == $stateOnline) ? 'selected' : '';
                            $stateOfflineSelected = ($value == $stateOffline) ? 'selected' : '';
                            if ($value == $stateOnline || $value == $stateOffline) {
                                $dropDownDisplay = '<select class="changeWebsiteStatus" data-websiteDetails= "'.$arrData['id'].'-'.$arrData['name'].'"><option value = ' . $stateOnline . ' ' . $stateOnlineSelected . '>' . $stateOnline . '</option>'
                                        . '<option value = ' . $stateOffline . ' ' . $stateOfflineSelected . '>' . $stateOffline . '</option>';
                                return $dropDownDisplay;
                            } else {
                                return $value;
                            }
                        },
                    )),
                'language' => array('showOverview' => false),
                'websiteServiceServerId' => array(
                    'header' => 'Website Service Server',
                    'table' => array(
                        'parse' => function($value) {
                            try {
                                $websiteServiceServer = \Env::get('em')->getRepository('Cx\Core_Modules\MultiSite\Model\Entity\WebsiteServiceServer')->findBy(array('id' => $value));
                                if ($websiteServiceServer) {
                                    return contrexx_raw2xhtml($websiteServiceServer[0]->getLabel().' ('.$websiteServiceServer[0]->getHostname()).')';
                                }
                            } catch (\Exception $e) {}
                            return 'Managed by this system';
                        },
                    ),
                ),
                'ipAddress' => array('header' => 'IP Address'),
                'ownerId' => array(
                    'header' => 'Owner',
                    'table' => array(
                        'parse' => function($value) {
                            return \FWUser::getParsedUserTitle($value);
                        },
                    ),
                ),
                'secretKey' => array(
                    'readonly'      => true,
                    'showOverview'  => false,
                ),
                'installationId' => array(
                    'readonly'      => true,
                    'showOverview'  => false,
                ),
            ),
        ));
        $template->setVariable('TABLE', $view->render());
    }

    /**
     * Set up the page with a list of all Settings  
     * Stores the settings if requested to.
     * @return  boolean             True on success, false otherwise
     */
    static function settings($objTemplate)
    { 
        global $_ARRAYLANG;
        $mode = \Cx\Core\Setting\Controller\Setting::getValue('mode');
        try {
            \Cx\Core\Setting\Controller\Setting::init('MultiSite', null, 'FileSystem');  
            //check form post
            if (isset($_POST)   && !empty($_POST['bsubmit'])) {
                if (isset($_POST['websitePath']))  {
                    $_POST['websitePath']=rtrim($_POST['websitePath'],"/");
                }
                // Tab #4 is tab 'Setup'
                if (isset($_GET['active_tab']) && $_GET['active_tab'] == 4 && ($mode == ComponentController::MODE_MANAGER || ComponentController::MODE_HYBRID)) {
                    \Cx\Core\Setting\Controller\Setting::storeFromPost();
                    $params = array('setupArray' => \Cx\Core\Setting\Controller\Setting::getArray('MultiSite', 'setup'));
                    $webServiceServers = \Env::get('em')->getRepository('Cx\Core_Modules\MultiSite\Model\Entity\WebsiteServiceServer')->findAll();
                    foreach ($webServiceServers as $webServiceServer) {
                        $resp = \Cx\Core_Modules\MultiSite\Controller\JsonMultiSite::executeCommandOnServiceServer('updateServiceServerSetup', $params, $webServiceServer);
                        if (!$resp || $resp->status == 'error') {
                            $errMsg = isset($resp->message) ? $resp->message : '';
                            \DBG::dump($errMsg);
                            if (isset($resp->log)) {
                                \DBG::appendLogsToMemory($resp->log);
                            }
                            throw new \Cx\Core_Modules\MultiSite\Model\Entity\WebsiteException('Problem in service servers update setup process'.$errMsg);    
                        }
                    }
                } else {
                    \Cx\Core\Setting\Controller\Setting::storeFromPost();
                }
            }

            // fetch MultiSite operation mode and set websiteController
            $websiteController = \Cx\Core\Setting\Controller\Setting::getValue('websiteController');

            if ($mode != ComponentController::MODE_WEBSITE) {
                \Cx\Core\Setting\Controller\Setting::init('MultiSite', 'config', 'FileSystem');    
                \Cx\Core\Setting\Controller\Setting::show(
                    $objTemplate,
                    'index.php?cmd=MultiSite&act=settings',
                    $_ARRAYLANG['TXT_CORE_MODULE_MULTISITE'],
                    'General',
                    'TXT_CORE_MODULE_MULTISITE_'
                );
            }
            
            if ($mode == ComponentController::MODE_MANAGER) {
                \Cx\Core\Setting\Controller\Setting::init('MultiSite', 'manager', 'FileSystem');    
                \Cx\Core\Setting\Controller\Setting::show(
                    $objTemplate,
                    'index.php?cmd=MultiSite&act=settings',
                    $_ARRAYLANG['TXT_CORE_MODULE_MULTISITE'],
                    'Manager',
                    'TXT_CORE_MODULE_MULTISITE_'
                );
            }
          
            if (in_array($mode, array(ComponentController::MODE_MANAGER, ComponentController::MODE_SERVICE, ComponentController::MODE_HYBRID))) {
                \Cx\Core\Setting\Controller\Setting::init('MultiSite', 'server', 'FileSystem');
                \Cx\Core\Setting\Controller\Setting::show(
                    $objTemplate,
                    'index.php?cmd=MultiSite&act=settings',
                    $_ARRAYLANG['TXT_CORE_MODULE_MULTISITE'],
                    'Server',
                    'TXT_CORE_MODULE_MULTISITE_'
                );
            }

            if (in_array($mode, array(ComponentController::MODE_MANAGER, ComponentController::MODE_SERVICE, ComponentController::MODE_HYBRID))) {
                \Cx\Core\Setting\Controller\Setting::init('MultiSite', 'setup', 'FileSystem');    
                \Cx\Core\Setting\Controller\Setting::show(
                    $objTemplate,
                    'index.php?cmd=MultiSite&act=settings',
// TODO: The configuration options multiSiteDomain, unavailablePrefixes, websiteNameMaxLength and  websiteNameMinLength must be set remotely by the Website Manager
//       Once implemented, those options must be read-only or not getting listed at all
                    $_ARRAYLANG['TXT_CORE_MODULE_MULTISITE'] .($mode == ComponentController::MODE_SERVICE ? $_ARRAYLANG['TXT_CORE_MODULE_MULTISITE_OPTIONS_SET_BY_WEBSITE_MANAGER'] : ''),
                    'Setup',
                    'TXT_CORE_MODULE_MULTISITE_', $mode == ComponentController::MODE_SERVICE ? true : ''
                );
            }
            
            if ($mode == ComponentController::MODE_SERVICE) {
                \Cx\Core\Setting\Controller\Setting::init('MultiSite', 'websiteManager', 'FileSystem');
                \Cx\Core\Setting\Controller\Setting::show(
                    $objTemplate,
                    'index.php?cmd=MultiSite&act=settings',
                    $_ARRAYLANG['TXT_CORE_MODULE_MULTISITE'],
                    'Website Manager',
                    'TXT_CORE_MODULE_MULTISITE_'
                );
            }
            
           if (in_array($mode, array(ComponentController::MODE_SERVICE, ComponentController::MODE_HYBRID))) {
                \Cx\Core\Setting\Controller\Setting::init('MultiSite', 'websiteSetup', 'FileSystem');    
                \Cx\Core\Setting\Controller\Setting::show(
                    $objTemplate,
                    'index.php?cmd=MultiSite&act=settings',
                    $_ARRAYLANG['TXT_CORE_MODULE_MULTISITE'],
                    'Website Setup',
                    'TXT_CORE_MODULE_MULTISITE_'
                );
            }
            
            if (   in_array($mode, array(ComponentController::MODE_MANAGER, ComponentController::MODE_SERVICE, ComponentController::MODE_HYBRID))
                && $websiteController == 'plesk'
            ) {
                \Cx\Core\Setting\Controller\Setting::init('MultiSite', 'plesk', 'FileSystem');
                \Cx\Core\Setting\Controller\Setting::show(
                    $objTemplate,
                    'index.php?cmd=MultiSite&act=settings',
                    $_ARRAYLANG['TXT_CORE_MODULE_MULTISITE'],
                    'Plesk',
                    'TXT_CORE_MODULE_MULTISITE_'
                );
            }

            if ($mode == ComponentController::MODE_WEBSITE) {
                // config section if the MultiSite is run as Website
                \Cx\Core\Setting\Controller\Setting::init('MultiSite', 'website', 'FileSystem');
                \Cx\Core\Setting\Controller\Setting::show(
                    $objTemplate,
                    'index.php?cmd=MultiSite&act=settings',
                    $_ARRAYLANG['TXT_CORE_MODULE_MULTISITE'],
                    'Website Service',
                    'TXT_CORE_MODULE_MULTISITE_'
                );
            }
        } catch (\Exception $e) {
            \DBG::msg($e->getMessage());
            \Message::error($e->getMessage());
        }
                    
    }
    
    /**
     * 
     * @global type $_ARRAYLANG
     * @param type $rowData
     * @return type
     * @throws \MultiSiteJsonException
     */
    public function executeSql($rowData) {
        global $_ARRAYLANG;

        $webRepo  = \Env::get('em')->getRepository('Cx\Core_Modules\MultiSite\Model\Entity\Website');
        $website  = $webRepo->findOneById($rowData['id']);
        if (!$website) {
            throw new \Exception('JsonMultiSite::executeSql() failed: Website by ID '.$rowData['id'].' not found.');
        }
        
        $websiteId = $rowData['id'];
       
        $javascript = <<<END
        cx.ready(function() {
                
            \$J(".dbEdit").html('<div class="executeSqlQuery"><form id="ExecuteSql"><div id="statusMsg"></div><textarea rows="10" cols="100" id="queryContent" name="executeQuery"></textarea></form></div>')
            var activateDialog = cx.ui.dialog({
                width: 820,
                height: 400,
                title: 'Execute SQL query on Website',
                content: \$J('.executeSqlQuery'),
                autoOpen: false,
                buttons: {
                    "Cancel": function() {
                        \$J(this).dialog("close");
                    },
                    "Excute": function() {
                        var query = \$J('#queryContent').val();
                        if(query == '') {
                            \$J('#statusMsg').text('Please insert a query..!');
                            return false;
                        } else {
                            executeQuery();
                        }
                    }
                }
            });
            executeQuery = function(){
                domainUrl = cx.variables.get('baseUrl', 'MultiSite') + cx.variables.get('cadminPath', 'contrexx') + "index.php?cmd=JsonData&object=MultiSite&act=executeSql";
                \$J.ajax({
                    url     :  domainUrl,
                    type    : "POST",
                    data    : {
                               query: \$J("#ExecuteSql").serialize(),
                               websiteId: $websiteId,
                               command:'executeSql'
                              },
                    dataType : "json",
                    success: function(response) {
                                if (response.status == 'error') {
                                    \$J('#statusMsg').text(response.message);
                                }
                                if (response.data.sqlStatus) {
                                    \$J('#statusMsg').text('SqlQuery Executed Successfully!.');
                                    \$J('#queryContent').val(response.data.sqlResult);
                                } else {
                                    \$J('#statusMsg').text('SqlQuery Execution Failed!.');
                                    \$J('#queryContent').val(response.data.sqlError);
                        }
                    }
                });
            };
                
            \$J(".dbEdit").click(function() {
                activateDialog.open();
             });
                
                
        });
END;
        \JS::registerCode($javascript);
        $dbEdit = '<a href="javascript:void(0);" class="dbEdit" title="'.$_ARRAYLANG['TXT_CORE_RECORD_EXECUTE_DB_TITLE'].'"></a>';
        
        return $dbEdit;
    }
}
