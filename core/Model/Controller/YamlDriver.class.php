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
 * Wrapper class for Doctrine YAML Driver
 *
 * @copyright   CONTREXX CMS - COMVATION AG
 * @author      Thomas Däppen <thomas.daeppen@comvation.com>
 * @version     4.0.0
 * @package     contrexx
 * @subpackage  core_model
 */

namespace Cx\Core\Model\Controller;

/**
 * Wrapper class for Doctrine YAML Driver
 *
 * @copyright   CONTREXX CMS - COMVATION AG
 * @author      Thomas Däppen <thomas.daeppen@comvation.com>
 * @version     4.0.0
 * @package     contrexx
 * @subpackage  core_model
 */
class YamlDriver extends \Doctrine\ORM\Mapping\Driver\YamlDriver
{
    /**
     * {@inheritdoc}
     */
    public function loadMetadataForClass($className, \Doctrine\ORM\Mapping\ClassMetadataInfo $metadata)
    {
        $element = $this->getElement($className, true);
        // Customizing for Contrexx: YamlEntity extension
        if ($element['type'] == 'YamlEntity') {
            $metadata->setCustomRepositoryClass(
                isset($element['repositoryClass']) ? $element['repositoryClass'] : null
            );
            $metadata->isMappedSuperclass = true;
        }
        parent::loadMetadataForClass($className, $metadata);
    }

    /**
     * {@inheritdoc}
     */
    public function getElement($className, $raw = false)
    {
        $result = $this->_loadMappingFile($this->_findMappingFile($className));
        if (!$raw && $result[$className]['type'] == 'YamlEntity') {
            $result[$className]['type'] = 'entity';
        }
        return $result[$className];
    }
}

