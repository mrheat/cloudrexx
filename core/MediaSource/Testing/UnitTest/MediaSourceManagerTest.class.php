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
 * MediaSourceManagerTest
 * 
 * @copyright   CONTREXX CMS - COMVATION AG
 * @author      Robin Glauser <robin.glauser@comvation.com>
 * @version     1.0.0
 * @package     contrexx
 * @subpackage  core_mediasource
 */

namespace Cx\Core_Modules\MediaBrowser\Testing\UnitTest;

use Cx\Core\MediaSource\Model\Entity\MediaSource;
use Cx\Core\MediaSource\Model\Entity\MediaSourceManager;
use Cx\Core\Test\Model\Entity\ContrexxTestCase;

/**
 * Class MediaSourceManagerTest
 *
 * @copyright   CONTREXX CMS - COMVATION AG
 * @author      Robin Glauser <robin.glauser@comvation.com>
 * @version     1.0.0
 * @package     contrexx
 * @subpackage  core_mediasource
 */
class MediaSourceManagerTest extends ContrexxTestCase
{

    public function testMediaSourceManager()
    {
        $testCx = new TestCx();
        $name = "Test";
        $testCx->getEvents()->addMediaSource(new MediaSource($name, "test", array(  self::$cx->getWebsiteImagesContentPath(),
            self::$cx->getWebsiteImagesContentWebPath(),)));
        $mediaSourceManger = new MediaSourceManager($testCx);
        $mediaTypes = $mediaSourceManger->getMediaTypes();
        $this->assertEquals($name,$mediaTypes['Test']->getName());
        $this->assertTrue(count($mediaSourceManger->getMediaTypes()) == 1);
    }
}