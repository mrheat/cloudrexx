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
 * Main controller for Message
 * 
 * @copyright   Comvation AG
 * @author      Project Team SS4U <info@comvation.com>
 * @package     contrexx
 * @subpackage  core_message
 */

namespace Cx\Core\Message\Controller;

/**
 * Main controller for Message
 * 
 * @copyright   Comvation AG
 * @author      Project Team SS4U <info@comvation.com>
 * @package     contrexx
 * @subpackage  core_message
 */
class ComponentController extends \Cx\Core\Core\Model\Entity\SystemComponentController {

    public function getControllerClasses() {
        // Return an empty array here to let the component handler know that there
        // does not exist a backend, nor a frontend controller of this component.
        return array();
    }

    /**
     * Do something after content is loaded from DB
     * 
     * @param \Cx\Core\ContentManager\Model\Entity\Page $page       The resolved page
     */
    public function postContentLoad(\Cx\Core\ContentManager\Model\Entity\Page $page) {
        switch ($this->cx->getMode()) {
          
            case \Cx\Core\Core\Controller\Cx::MODE_BACKEND:
                $objTemplate =  $this->cx->getTemplate();

                // TODO: This would better be handled by the Message class
                if (!empty($objTemplate->_variables['CONTENT_STATUS_MESSAGE'])) {
                    $objTemplate->_variables['CONTENT_STATUS_MESSAGE'] =
                            '<div id="alertbox">' .
                            $objTemplate->_variables['CONTENT_STATUS_MESSAGE'] . '</div>';
                }
                if (!empty($objTemplate->_variables['CONTENT_OK_MESSAGE'])) {
                    if (!isset($objTemplate->_variables['CONTENT_STATUS_MESSAGE'])) {
                        $objTemplate->_variables['CONTENT_STATUS_MESSAGE'] = '';
                    }
                    $objTemplate->_variables['CONTENT_STATUS_MESSAGE'] .=
                            '<div id="okbox">' .
                            $objTemplate->_variables['CONTENT_OK_MESSAGE'] . '</div>';
                }
                if (!empty($objTemplate->_variables['CONTENT_WARNING_MESSAGE'])) {
                    $objTemplate->_variables['CONTENT_STATUS_MESSAGE'] .=
                            '<div class="warningbox">' .
                            $objTemplate->_variables['CONTENT_WARNING_MESSAGE'] . '</div>';
                }
                break;

            default:
                break;
        }
    }

}
