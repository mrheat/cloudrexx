<?php

namespace Cx\Core_Modules\Workbench\Controller;

class Sandbox {
    const MODE_DQL = 'dql';
    const MODE_PHP = 'php';
    protected $mode = self::MODE_DQL;
    protected $template = null;
    protected $code = null;
    protected $result = null;

    public function __construct(&$language, $mode, &$arguments) {
        \DBG::activate(DBG_PHP);
        $this->mode = $mode;
        $this->initialize($arguments);
        $this->execute();
        $this->show();
    }
    
    protected function initialize(&$arguments) {
        switch ($this->mode) {
            case self::MODE_DQL:
                $this->code = 'SELECT p FROM Cx\Core\ContentManager\Model\Entity\Page p WHERE p.id < 10';
                if (!empty($arguments['code'])) {
                    $this->code = contrexx_input2raw($arguments['code']);
                }
                $this->result = '';
                break;
            case self::MODE_PHP:
            default:
                $this->code = 'return $em->getRepository(\'Cx\Core\ContentManager\Model\Entity\Node\')->verify();';
                if (!empty($arguments['code'])) {
                    $this->code = contrexx_input2raw($arguments['code']);
                }
                $this->result = '';
                break;
        }
    }
    
    protected function execute() {
        switch ($this->mode) {
            case self::MODE_DQL:
                $this->result = '';
                $strQuery = trim($this->code);
                $lister = new \Cx\Core_Modules\Listing\Controller\ListingController(
                    function(&$offset, &$count, &$criteria, &$order) use ($strQuery) {
                        // @todo: add statements for offset, count, crit and order
                        $query = \Env::get('em')->createQuery($strQuery);
                        $result = $query->getResult();
                        if (!$result) {
                            throw new \Exception('Empty result');
                        }
                        return new \Cx\Core_Modules\Listing\Model\DataSet($result);
                    }
                );
                try {
                    $table = new \BackendTable($lister->getData());
                    $this->result = $table->toHtml().$lister;
                } catch (\Exception $e) {
                    $this->result = 'Could not execute query (' . $e->getMessage() . ')!';
                }
                break;
            case self::MODE_PHP:
                try {
                    $function = create_function('$em', '' . $this->code . '');
                    $this->result = var_export($function(\Env::get('em')), true);
                } catch (\Exception $e) {
                    $this->result = $e->getMessage();
                }
                break;
            default:
                break;
        }
    }
    
    /**
     * This code does not belong here, but where to put it?
     */
    protected function getEntities() {
        $entities = array();
        $sortedEntities = array(
            'noncx' => array(),
        );
        foreach (get_declared_classes() as $entity) {
            if (!is_subclass_of($entity, '\\Cx\\Model\\Base\\EntityBase')) {
                continue;
            }
            $parts = explode('\\', $entity);
            if ($parts[0] == 'Cx') {
                if ($parts[1] == 'Model' && $parts[2] == 'Proxies') {
                    continue;
                }
                if (!isset($sortedEntities[$parts[1]])) {
                    $sortedEntities[$parts[1]] = array();
                }
                if (!isset($sortedEntities[$parts[1]][$parts[2]])) {
                    $sortedEntities[$parts[1]][$parts[2]] = array();
                }
                end($parts);
                $sortedEntities[$parts[1]][$parts[2]][$entity] = current($parts);
            } else {
                $sortedEntities['noncx'][] = $entity;
            }
        }
        if (!count($sortedEntities['noncx'])) {
            unset($sortedEntities['noncx']);
        }
        $entityList = '<ul>';
        foreach ($sortedEntities as $componentType=>$componentNames) {
            $entityList .= '<li>' . $componentType . '<ul>';
            foreach ($componentNames as $componentName=>$entities) {
                $entityList .= '<li>' . $componentName . '<ul>';
                foreach ($entities as $entityClass=>$entityName) {
                    $entityList .= '<li title="' . $entityClass . '">' . $entityName . '</li>';
                }
                $entityList .= '</ul></li>';
            }
            $entityList .= '</ul></li>';
        }
        $entityList .= '</ul>';
        return $entityList;
    }
    
    /**
     * @todo: no HTML here!
     */
    protected function show() {
        $this->template = new \Cx\Core\Html\Sigma(ASCMS_CORE_MODULE_PATH . '/Workbench/View/Template');
        $this->template->loadTemplateFile('Sandbox.html');
        
        switch ($this->mode) {
            case self::MODE_DQL:
                $sideboxTitle = $lang['TXT_COREMODULE_WORKBENCH_SANDBOX_ENTITIES'];
                $sideboxContent = $this->getEntities();
                break;
            case self::MODE_PHP:
            default:
                $sideboxTitle = $lang['TXT_COREMODULE_WORKBENCH_SANDBOX_VARIABLES'];
                $sideboxContent = '<ul>
                    <li>$em Doctrine entity manager</li>
                </ul>';
                break;
        }
        
        $this->template->setVariable(array(
            'FORM_ACTION' => 'index.php?cmd=workbench&act=sandbox/' . $this->mode,
            'TXT_COREMODULE_WORKBENCH_SANDBOX_SUBMIT' => $lang['TXT_COREMODULE_WORKBENCH_SANDBOX_SUBMIT'],
            'CODE' => $this->code,
            'RESULT' => $this->result,
            'SIDEBOX_TITLE' => $sideboxTitle,
            'SIDEBOX_CONTENT' => $sideboxContent,
        ));
    }
    
    public function __toString() {
        return $this->template->get();
    }
}

