<?php

/**
 * Contrexx
 *
 * @link      http://www.cloudrexx.com
 * @copyright Comvation AG 2007-2015
 * @version   Contrexx 4.0
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
 * "Contrexx" is a registered trademark of Comvation AG.
 * The licensing of the program under the AGPLv3 does not imply a
 * trademark license. Therefore any rights, title and interest in
 * our trademarks remain entirely with us.
 */

/**
 * Main controller for JsonData
 * 
 * @copyright   Comvation AG
 * @author Project Team SS4U <info@comvation.com>
 * @package contrexx
 * @subpackage core_jsondata
 */

namespace Cx\Core\JsonData\Controller;

/**
 * Main controller for JsonData
 * 
 * @copyright   Comvation AG
 * @author Project Team SS4U <info@comvation.com>
 * @package contrexx
 * @subpackage core_jsondata
 */
class ComponentController extends \Cx\Core\Core\Model\Entity\SystemComponentController {
    public function getControllerClasses() {
        // Return an empty array here to let the component handler know that there
        // does not exist a backend, nor a frontend controller of this component.
        return array();
    }

     /**
     * Load your component.
     * 
     * @param \Cx\Core\ContentManager\Model\Entity\Page $page       The resolved page
     */
    public function load(\Cx\Core\ContentManager\Model\Entity\Page $page) {
        switch ($this->cx->getMode()) {
            case \Cx\Core\Core\Controller\Cx::MODE_BACKEND:
                $json = new \Cx\Core\Json\JsonData();
                // TODO: Verify that the arguments are actually present!
                $adapter = contrexx_input2raw($_GET['object']);
                $method = contrexx_input2raw($_GET['act']);
                // TODO: Replace arguments by something reasonable
                $arguments = array('get' => $_GET, 'post' => $_POST);
                echo $json->jsondata($adapter, $method, $arguments);
                die();
                break;
        }
    }

    /**
     * Do something before content is loaded from DB
     * 
     * @param \Cx\Core\ContentManager\Model\Entity\Page $page       The resolved page
     */
    public function preContentLoad(\Cx\Core\ContentManager\Model\Entity\Page $page) {
        global $section;
        switch ($this->cx->getMode()) {
            case \Cx\Core\Core\Controller\Cx::MODE_FRONTEND:
                if ($section == 'JsonData') {
                    // TODO: move this code to /core/Json/...
                    // TODO: handle expired sessions in any xhr callers.
                    $json = new \Cx\Core\Json\JsonData();
                    // TODO: Verify that the arguments are actually present!
                    $adapter = contrexx_input2raw($_GET['object']);
                    $method = contrexx_input2raw($_GET['act']);
                    // TODO: Replace arguments by something reasonable
                    $arguments = array('get' => $_GET, 'post' => $_POST);
                    echo $json->jsondata($adapter, $method, $arguments);
                    die();
                }
                break;
        }
    }

}