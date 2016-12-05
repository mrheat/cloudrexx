<?php

/**
 * Specific FrontendController for this Component. Use this to easily create a frontend view
 *
 * @copyright   Comvation AG
 * @author      Manuel Schenk <manuel.schenk@comvation.com>
 * @package     cloudrexx
 * @subpackage  module_favoritelist
 * @version     5.0.0
 */

namespace Cx\Modules\FavoriteList\Controller;

/**
 * Specific FrontendController for this Component. Use this to easily create a frontent view
 *
 * @copyright   Comvation AG
 * @author      Manuel Schenk <manuel.schenk@comvation.com>
 * @package     cloudrexx
 * @subpackage  module_favoritelist
 * @version     5.0.0
 */
class FrontendController extends \Cx\Core\Core\Model\Entity\SystemComponentFrontendController
{
    public function parsePage(\Cx\Core\Html\Sigma $template, $cmd)
    {
        global $_ARRAYLANG;

        $em = $this->cx->getDb()->getEntityManager();
        $catalogRepo = $em->getRepository($this->getNamespace() . '\Model\Entity\Catalog');
        $sessionId = $this->getComponent('Session')->getSession()->sessionid;
        $catalog = $catalogRepo->findOneBy(array('sessionId' => $sessionId));

        switch ($cmd) {
            case 'mail':
                if (empty($catalog)) {
                    $template->setVariable(array(
                        strtoupper($this->getName()) . '_MAIL_MESSAGE_NO_CATALOG' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_MESSAGE_NO_CATALOG'],
                    ));
                    $template->parse(strtolower($this->getName()) . '_mail_no_catalog');
                    break;
                } else {
                    $favorites = $catalog->getFavorites();
                    if (!$favorites->count()) {
                        $template->setVariable(array(
                            strtoupper($this->getName()) . '_MAIL_MESSAGE_NO_ENTRIES' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_MESSAGE_NO_ENTRIES'],
                        ));
                        $template->parse(strtolower($this->getName()) . '_mail_no_entries');
                        break;
                    }
                }

                if (isset($_POST['send'])) {

                } else {
                    $template->parse(strtolower($this->getName()) . '_mail');
                }
                break;
            case 'print':
                if (empty($catalog)) {
                    $template->setVariable(array(
                        strtoupper($this->getName()) . '_PRINT_MESSAGE_NO_CATALOG' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_MESSAGE_NO_CATALOG'],
                    ));
                    $template->parse(strtolower($this->getName()) . '_print_no_catalog');
                    break;
                } else {
                    $favorites = $catalog->getFavorites();
                    if (!$favorites->count()) {
                        $template->setVariable(array(
                            strtoupper($this->getName()) . '_PRINT_MESSAGE_NO_ENTRIES' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_MESSAGE_NO_ENTRIES'],
                        ));
                        $template->parse(strtolower($this->getName()) . '_print_no_entries');
                        break;
                    }
                }

                $template->parse(strtolower($this->getName()) . '_print');
                \Cx\Core\Setting\Controller\Setting::init($this->getName(), 'pdf');
//                $pdfTemplateId = \Cx\Core\Setting\Controller\Setting::getValue('pdfTemplate', 'pdf');
                $pdfTemplateId = 1;

                $catalogHtml = $this->getController('Json')->getCatalog();
                $substitution = array(
                    strtoupper($this->getName()) . '_PRINT_PDF_LOGO' => \Cx\Core\Setting\Controller\Setting::getValue('pdfLogo', 'pdf'),
                    strtoupper($this->getName()) . '_PRINT_PDF_ADDRESS' => \Cx\Core\Setting\Controller\Setting::getValue('pdfAddress', 'pdf'),
                    strtoupper($this->getName()) . '_PRINT_PDF_CATALOG' => $catalogHtml,
                    strtoupper($this->getName()) . '_PRINT_PDF_FOOTER' => \Cx\Core\Setting\Controller\Setting::getValue('pdfFooter', 'pdf'),
                );

                $pdf = $this->getComponent('Pdf');
                $pdfFile = $pdf->generatePDF($pdfTemplateId, $substitution, $this->getName() . '_Catalog');
                $newPdfFilePath = 'images/' . $this->getName() . '/Catalog_' . $sessionId . '.pdf';
                copy(substr($pdfFile['filePath'], 1), $newPdfFilePath);

                $template->setVariable(array(
                    strtoupper($this->getName()) . '_PRINT_PDF_PATH' => $newPdfFilePath,
                    strtoupper($this->getName()) . '_PRINT_ACTION' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_PRINT_ACTION'],
                ));

                \JS::registerJS(substr($this->getDirectory(false, true) . '/View/Script/Print.js', 1));
                break;
            case 'recommendation':
                if (empty($catalog)) {
                    $template->setVariable(array(
                        strtoupper($this->getName()) . '_RECOMMENDATION_MESSAGE_NO_CATALOG' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_MESSAGE_NO_CATALOG'],
                    ));
                    $template->parse(strtolower($this->getName()) . '_recommendation_no_catalog');
                    break;
                } else {
                    $favorites = $catalog->getFavorites();
                    if (!$favorites->count()) {
                        $template->setVariable(array(
                            strtoupper($this->getName()) . '_RECOMMENDATION_MESSAGE_NO_ENTRIES' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_MESSAGE_NO_ENTRIES'],
                        ));
                        $template->parse(strtolower($this->getName()) . '_recommendation_no_entries');
                        break;
                    }
                }

                if (isset($_POST['send'])) {

                } else {
                    $template->parse(strtolower($this->getName()) . '_recommendation');
                }
                break;
            case 'inquiry':
                if (empty($catalog)) {
                    $template->setVariable(array(
                        strtoupper($this->getName()) . '_INQUIRY_MESSAGE_NO_CATALOG' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_MESSAGE_NO_CATALOG'],
                    ));
                    $template->parse(strtolower($this->getName()) . '_inquiry_no_catalog');
                    break;
                } else {
                    $favorites = $catalog->getFavorites();
                    if (!$favorites->count()) {
                        $template->setVariable(array(
                            strtoupper($this->getName()) . '_INQUIRY_MESSAGE_NO_ENTRIES' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_MESSAGE_NO_ENTRIES'],
                        ));
                        $template->parse(strtolower($this->getName()) . '_inquiry_no_entries');
                        break;
                    }
                }

                if (isset($_POST['send'])) {

                } else {
                    $em = $this->cx->getDb()->getEntityManager();
                    $formFieldRepo = $em->getRepository($this->getNamespace() . '\Model\Entity\FormField');
                    $formFields = $formFieldRepo->findAll();

                    $template->parse(strtolower($this->getName()) . '_inquiry');

                    $dataSet = new \Cx\Core_Modules\Listing\Model\Entity\DataSet($formFields);
                    $dataSet->sortColumns(array('order' => 'ASC'));
                    foreach ($dataSet as $formField) {
                        $template->parse(strtolower($this->getName()) . '_form_field');
                        $required = $formField['required'];
                        if ($required) {
                            $template->touchBlock(strtolower($this->getName()) . '_form_field_required');
                        }
                        switch ($formField['type']) {
                            case 'text':
                            case 'textarea':
                            case 'mail':
                                $template->setVariable(array(
                                    'ID' => $formField['id'],
                                    'REQUIRED' => $required ? 'required' : '',
                                    'LABEL' => contrexx_raw2xhtml($formField['name']),
                                ));
                                $template->parse(strtolower($this->getName()) . '_form_field_' . $formField['type']);
                                break;
                            case 'select':
                                $values = $formField['values'];
                                $values = explode(',', str_replace(' ', '', $values));
                                foreach ($values as $key => $value) {
                                    $template->setVariable(array(
                                        'INDEX' => $key,
                                        'VALUE' => contrexx_raw2xhtml($value),
                                        'ID' => $formField['id'],
                                        'REQUIRED' => $required ? 'required' : '',
                                        'LABEL' => contrexx_raw2xhtml($formField['name']),
                                    ));
                                    $template->parse(strtolower($this->getName()) . '_form_field_' . $formField['type'] . '_value');
                                }
                                $template->parse(strtolower($this->getName()) . '_form_field_' . $formField['type']);
                                break;
                            case 'radio':
                            case 'checkbox':
                                $values = $formField['values'];
                                $values = explode(',', str_replace(' ', '', $values));
                                foreach ($values as $key => $value) {
                                    $template->setVariable(array(
                                        'INDEX' => $key,
                                        'VALUE' => contrexx_raw2xhtml($value),
                                        'ID' => $formField['id'],
                                        'REQUIRED' => $required ? 'required' : '',
                                        'LABEL' => contrexx_raw2xhtml($formField['name']),
                                    ));
                                    $template->parse(strtolower($this->getName()) . '_form_field_' . $formField['type']);
                                }
                        }
                    }
                }
                break;
            default:
                if (empty($catalog)) {
                    $template->setVariable(array(
                        strtoupper($this->getName()) . '_MESSAGE_NO_CATALOG' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_MESSAGE_NO_CATALOG'],
                    ));
                    $template->parse(strtolower($this->getName()) . '_no_catalog');
                    break;
                } else {
                    $favorites = $catalog->getFavorites();
                    if (!$favorites->count()) {
                        $template->setVariable(array(
                            strtoupper($this->getName()) . '_MESSAGE_NO_ENTRIES' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_MESSAGE_NO_ENTRIES'],
                        ));
                        $template->parse(strtolower($this->getName()) . '_no_entries');
                        break;
                    }
                }

                $favorites = $catalog->getFavorites()->toArray();
                $favoritesView = new \Cx\Core\Html\Controller\ViewGenerator(
                    $favorites,
                    array(
                        $this->getNamespace() . '\Model\Entity\Favorite' => $this->getViewGeneratorOptions(
                            $this->getNamespace() . '\Model\Entity\Favorite'
                        ),
                    )
                );
                $template->parse(strtolower($this->getName()) . '_catalog');
                $template->setVariable(array(
                    strtoupper($this->getName()) . '_CATALOG' => $favoritesView,
                ));

                $template->parse(strtolower($this->getName()) . '_catalog_actions');
                \Cx\Core\Setting\Controller\Setting::init($this->getName(), 'function');
                $cmds = array(
                    'mail',
                    'print',
                    'recommendation',
                    'inquiry',
                );
                foreach ($cmds as $cmd) {
                    if (\Cx\Core\Setting\Controller\Setting::getValue('function' . ucfirst($cmd), 'function')) {
                        $template->setVariable(array(
                            strtoupper($this->getName()) . '_ACT_' . strtoupper($cmd) . '_LINK' => \Cx\Core\Routing\Url::fromModuleAndCmd($this->getName(), $cmd),
                        ));
                        $template->parse(strtolower($this->getName()) . '_catalog_actions_' . $cmd);
                    }
                }
                break;
        }
    }

    /**
     * This function returns the ViewGeneration options for a given entityClass
     *
     * @access protected
     * @global $_ARRAYLANG
     * @global $_CONFIG
     * @param $entityClassName contains the FQCN from entity
     * @return array with options
     */
    protected function getViewGeneratorOptions($entityClassName)
    {
        global $_ARRAYLANG;

        $classNameParts = explode('\\', $entityClassName);
        $classIdentifier = end($classNameParts);

        $langVarName = 'TXT_' . strtoupper($this->getType() . '_' . $this->getName() . '_ACT_' . $classIdentifier);
        if (isset($_ARRAYLANG[$langVarName])) {
            $header = $_ARRAYLANG[$langVarName];
        } else {
            $header = $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_ACT_DEFAULT'];
        }

        switch ($entityClassName) {
            case 'Cx\Modules\FavoriteList\Model\Entity\Favorite':
                if (!isset($_GET['order'])) {
                    $_GET['order'] = 'id';
                }
                return array(
                    'header' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_ACT_FAVORITE'],
                    'fields' => array(
                        'id' => array(
                            'showOverview' => false,
                            'showDetail' => false,
                        ),
                        'title' => array(
                            'header' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_FIELD_TITLE'],
                        ),
                        'link' => array(
                            'header' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_FIELD_LINK'],
                        ),
                        'description' => array(
                            'header' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_FIELD_DESCRIPTION'],
                        ),
                        'message' => array(
                            'header' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_FIELD_MESSAGE'],
                        ),
                        'price' => array(
                            'header' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_FIELD_PRICE'],
                        ),
                        'image1' => array(
                            'header' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_FIELD_IMAGE_1'],
                        ),
                        'image2' => array(
                            'header' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_FIELD_IMAGE_2'],
                        ),
                        'image3' => array(
                            'header' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_FIELD_IMAGE_3'],
                        ),
                        'catalog' => array(
                            'showOverview' => false,
                            'showDetail' => false,
                        ),
                    ),
                    'functions' => array(
                        'add' => false,
                        'edit' => true,
                        'delete' => true,
                        'sorting' => false,
                        'paging' => false,
                        'filtering' => false,
                    ),
                    'order' => array(
                        'overview' => array(
                            'id',
                            'catalog',
                            'title',
                            'link',
                            'description',
                            'message',
                            'price',
                            'image1',
                            'image2',
                            'image3',
                        ),
                        'form' => array(
                            'id',
                            'catalog',
                            'title',
                            'link',
                            'description',
                            'message',
                            'price',
                            'image1',
                            'image2',
                            'image3',
                        ),
                    ),
                );
                break;
            default:
                return array(
                    'header' => $header,
                    'functions' => array(
                        'add' => false,
                        'edit' => true,
                        'delete' => true,
                        'sorting' => false,
                        'paging' => false,
                        'filtering' => false,
                    ),
                );
                break;
        }
    }

    /**
     * This function sets the block
     * @param \Cx\Core\Html\Sigma $template
     * @access public
     */
    public function getBlock($template)
    {
        global $_ARRAYLANG;

        if (!$template->placeholderExists(strtoupper($this->getName()) . '_BLOCK')) {
            return;
        }
        $theme = $this->getTheme();
        $template->addBlockfile(
            strtoupper($this->getName()) . '_BLOCK',
            strtoupper($this->getName()) . '_BLOCK',
            'themes/' . $theme->getFoldername() . '/' . strtolower($this->getName()) . '_block.html'
        );

        $template->setVariable(array(
            strtoupper($this->getName()) . '_BLOCK_TITLE' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName())],
        ));

        \JS::registerJS(substr($this->getDirectory(false, true) . '/View/Script/Frontend.js', 1));
        \JS::registerCSS($this->getComponent('Html')->getDirectory() . '/View/Style/Backend.css');

        $template->parse(strtolower($this->getName()) . '_block_actions');
        \Cx\Core\Setting\Controller\Setting::init($this->getName(), 'function');
        $cmds = array(
            'mail',
            'print',
            'recommendation',
            'inquiry',
        );
        foreach ($cmds as $cmd) {
            if (\Cx\Core\Setting\Controller\Setting::getValue('function' . ucfirst($cmd), 'function')) {
                $template->setVariable(array(
                    strtoupper($this->getName()) . '_BLOCK_ACT_' . strtoupper($cmd) . '_LINK' => \Cx\Core\Routing\Url::fromModuleAndCmd($this->getName(), $cmd),
                    strtoupper($this->getName()) . '_BLOCK_ACT_' . strtoupper($cmd) . '_NAME' => $_ARRAYLANG['TXT_' . strtoupper($this->getType()) . '_' . strtoupper($this->getName()) . '_ACT_' . strtoupper($cmd)],
                ));
                $template->parse(strtolower($this->getName()) . '_block_actions_' . $cmd);
            }
        }
    }

    /**
     * Get theme by theme id
     *
     * @param array $params User input array
     * @return \Cx\Core\View\Model\Entity\Theme Theme instance
     * @throws JsonListException When theme id empty or theme does not exits in the system
     */
    public function getTheme($id = null)
    {
        $themeRepository = new \Cx\Core\View\Model\Repository\ThemeRepository();
        if (empty($id)) {
            return $themeRepository->getDefaultTheme();
        }
        $theme = $themeRepository->findById($id);
        if (!$theme) {
            throw new JsonListException('The theme id ' . $id . ' does not exists.');
        }
        return $theme;
    }
}