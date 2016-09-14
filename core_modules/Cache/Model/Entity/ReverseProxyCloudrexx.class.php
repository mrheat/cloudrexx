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
 * Abstract representation of a caching reverse proxy
 * @copyright   CLOUDREXX CMS - CLOUDREXX AG
 * @author      Michael Ritter <michael.ritter@comvation.com>
 * @package     cloudrexx
 * @subpackage  lib_reverseproxy
 * @link        http://www.cloudrexx.com/ cloudrexx homepage
 * @since       v5.0.0
 */

namespace Cx\Core_Modules\Cache\Model\Entity;

/**
 * Abstract representation of a caching reverse proxy
 * @copyright   CLOUDREXX CMS - CLOUDREXX AG
 * @author      Michael Ritter <michael.ritter@comvation.com>
 * @package     cloudrexx
 * @subpackage  lib_reverseproxy
 * @link        http://www.cloudrexx.com/ cloudrexx homepage
 * @since       v5.0.0
 */
class ReverseProxyCloudrexx extends \Cx\Lib\ReverseProxy\Model\Entity\ReverseProxy {
    
    /**
     * Initializes a reverse proxy instance
     * @param string $hostname Proxy hostname
     * @param int $port Proxy port
     */
    public function __construct($hostname, $port) {
        $this->hostname = $hostname;
        $this->port = $port;
        $this->ssiProcessor = new \Cx\Lib\ReverseProxy\Model\Entity\SsiProcessorEsi();
    }
    
    /**
     * Clears a cache page
     * @param string $urlPattern Drop all pages that match the pattern, for exact format, make educated guesses
     * @param string $domain Domain name to drop cache page of
     * @param int $port Port to drop cache page of
     */
    protected function clearCachePageForDomainAndPort($urlPattern, $domain, $port) {
        $strCachePath = ASCMS_CACHE_PATH . '/';
        
        if ($urlPattern == '*') {
            $fileNames = glob($strCachePath . '*');
            foreach ($fileNames as $fileName) {
                if (!preg_match('#/[0-9a-f]{32}$#', $fileName)) {
                    continue;
                }
                $file = new \Cx\Lib\FileSystem\File($fileName);
                $file->delete();
            }
            return;
        }
        
        $cacheFile = md5($urlPattern);
        $file = new \Cx\Lib\FileSystem\File($strCachePath . $cacheFile);
        $file->delete();
    }
}
