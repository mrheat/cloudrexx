<?php
/**
 * @copyright   Comvation AG 
 * @author Robin Glauser <robin.glauser@comvation.com>
 * @package     contrexx
 */

namespace Cx\Core_Modules\Access\Model\Event;

use Cx\Core\Core\Controller\Cx;
use Cx\Core\Event\Model\Entity\EventListener;
use Cx\Core_Modules\MediaBrowser\Controller\MediaBrowserConfiguration;
use Cx\Core\Model\Model\Entity\MediaType;

class AccessEventListener implements EventListener {

    /**
     * @var Cx
     */
    protected $cx;

    function __construct(Cx $cx)
    {
        $this->cx = $cx;
    }


    public function onEvent($eventName, array $eventArgs)
    {
        $this->$eventName(current($eventArgs));
    }

    public function LoadMediaTypes(MediaBrowserConfiguration $mediaBrowserConfiguration)
    {
        global $_ARRAYLANG;
        $mediaType = new MediaType();
        $mediaType->setName('access');
        $mediaType->setHumanName($_ARRAYLANG['TXT_USER_ADMINISTRATION']);
        $mediaType->setDirectory(array(
            $this->cx->getWebsiteImagesAccessPath(),
            $this->cx->getWebsiteImagesAccessWebPath(),
        ));
        $mediaType->getAccessIds(array(18));
        $mediaBrowserConfiguration->addMediaType($mediaType);
    }

}