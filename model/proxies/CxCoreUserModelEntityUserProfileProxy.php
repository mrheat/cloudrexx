<?php

namespace Cx\Model\Proxies;

/**
 * THIS CLASS WAS GENERATED BY THE DOCTRINE ORM. DO NOT EDIT THIS FILE.
 */
class CxCoreUserModelEntityUserProfileProxy extends \Cx\Core\User\Model\Entity\UserProfile implements \Doctrine\ORM\Proxy\Proxy
{
    private $_entityPersister;
    private $_identifier;
    public $__isInitialized__ = false;
    public function __construct($entityPersister, $identifier)
    {
        $this->_entityPersister = $entityPersister;
        $this->_identifier = $identifier;
    }
    private function _load()
    {
        if (!$this->__isInitialized__ && $this->_entityPersister) {
            $this->__isInitialized__ = true;
            if ($this->_entityPersister->load($this->_identifier, $this) === null) {
                throw new \Doctrine\ORM\EntityNotFoundException();
            }
            unset($this->_entityPersister, $this->_identifier);
        }
    }

    
    public function setUserId($userId)
    {
        $this->_load();
        return parent::setUserId($userId);
    }

    public function getUserId()
    {
        $this->_load();
        return parent::getUserId();
    }

    public function setGender($gender)
    {
        $this->_load();
        return parent::setGender($gender);
    }

    public function getGender()
    {
        $this->_load();
        return parent::getGender();
    }

    public function setFirstname($firstname)
    {
        $this->_load();
        return parent::setFirstname($firstname);
    }

    public function getFirstname()
    {
        $this->_load();
        return parent::getFirstname();
    }

    public function setLastname($lastname)
    {
        $this->_load();
        return parent::setLastname($lastname);
    }

    public function getLastname()
    {
        $this->_load();
        return parent::getLastname();
    }

    public function setCompany($company)
    {
        $this->_load();
        return parent::setCompany($company);
    }

    public function getCompany()
    {
        $this->_load();
        return parent::getCompany();
    }

    public function setAddress($address)
    {
        $this->_load();
        return parent::setAddress($address);
    }

    public function getAddress()
    {
        $this->_load();
        return parent::getAddress();
    }

    public function setCity($city)
    {
        $this->_load();
        return parent::setCity($city);
    }

    public function getCity()
    {
        $this->_load();
        return parent::getCity();
    }

    public function setZip($zip)
    {
        $this->_load();
        return parent::setZip($zip);
    }

    public function getZip()
    {
        $this->_load();
        return parent::getZip();
    }

    public function setCountry($country)
    {
        $this->_load();
        return parent::setCountry($country);
    }

    public function getCountry()
    {
        $this->_load();
        return parent::getCountry();
    }

    public function setPhoneOffice($phoneOffice)
    {
        $this->_load();
        return parent::setPhoneOffice($phoneOffice);
    }

    public function getPhoneOffice()
    {
        $this->_load();
        return parent::getPhoneOffice();
    }

    public function setPhonePrivate($phonePrivate)
    {
        $this->_load();
        return parent::setPhonePrivate($phonePrivate);
    }

    public function getPhonePrivate()
    {
        $this->_load();
        return parent::getPhonePrivate();
    }

    public function setPhoneMobile($phoneMobile)
    {
        $this->_load();
        return parent::setPhoneMobile($phoneMobile);
    }

    public function getPhoneMobile()
    {
        $this->_load();
        return parent::getPhoneMobile();
    }

    public function setPhoneFax($phoneFax)
    {
        $this->_load();
        return parent::setPhoneFax($phoneFax);
    }

    public function getPhoneFax()
    {
        $this->_load();
        return parent::getPhoneFax();
    }

    public function setBirthday($birthday)
    {
        $this->_load();
        return parent::setBirthday($birthday);
    }

    public function getBirthday()
    {
        $this->_load();
        return parent::getBirthday();
    }

    public function setWebsite($website)
    {
        $this->_load();
        return parent::setWebsite($website);
    }

    public function getWebsite()
    {
        $this->_load();
        return parent::getWebsite();
    }

    public function setProfession($profession)
    {
        $this->_load();
        return parent::setProfession($profession);
    }

    public function getProfession()
    {
        $this->_load();
        return parent::getProfession();
    }

    public function setInterests($interests)
    {
        $this->_load();
        return parent::setInterests($interests);
    }

    public function getInterests()
    {
        $this->_load();
        return parent::getInterests();
    }

    public function setSignature($signature)
    {
        $this->_load();
        return parent::setSignature($signature);
    }

    public function getSignature()
    {
        $this->_load();
        return parent::getSignature();
    }

    public function setPicture($picture)
    {
        $this->_load();
        return parent::setPicture($picture);
    }

    public function getPicture()
    {
        $this->_load();
        return parent::getPicture();
    }

    public function setUsers(\Cx\Core\User\Model\Entity\User $users)
    {
        $this->_load();
        return parent::setUsers($users);
    }

    public function getUsers()
    {
        $this->_load();
        return parent::getUsers();
    }

    public function setUserTitle(\Cx\Core\User\Model\Entity\ProfileTitle $userTitle)
    {
        $this->_load();
        return parent::setUserTitle($userTitle);
    }

    public function getUserTitle()
    {
        $this->_load();
        return parent::getUserTitle();
    }

    public function addUserAttribute(\Cx\Core\User\Model\Entity\UserAttribute $userAttribute)
    {
        $this->_load();
        return parent::addUserAttribute($userAttribute);
    }

    public function getUserAttribute()
    {
        $this->_load();
        return parent::getUserAttribute();
    }

    public function __get($name)
    {
        $this->_load();
        return parent::__get($name);
    }

    public function getComponentController()
    {
        $this->_load();
        return parent::getComponentController();
    }

    public function setVirtual($virtual)
    {
        $this->_load();
        return parent::setVirtual($virtual);
    }

    public function isVirtual()
    {
        $this->_load();
        return parent::isVirtual();
    }

    public function validate()
    {
        $this->_load();
        return parent::validate();
    }

    public function __toString()
    {
        $this->_load();
        return parent::__toString();
    }


    public function __sleep()
    {
        return array('__isInitialized__', 'userId', 'gender', 'firstname', 'lastname', 'company', 'address', 'city', 'zip', 'country', 'phoneOffice', 'phonePrivate', 'phoneMobile', 'phoneFax', 'birthday', 'website', 'profession', 'interests', 'signature', 'picture', 'users', 'userTitle', 'userAttribute');
    }

    public function __clone()
    {
        if (!$this->__isInitialized__ && $this->_entityPersister) {
            $this->__isInitialized__ = true;
            $class = $this->_entityPersister->getClassMetadata();
            $original = $this->_entityPersister->load($this->_identifier);
            if ($original === null) {
                throw new \Doctrine\ORM\EntityNotFoundException();
            }
            foreach ($class->reflFields AS $field => $reflProperty) {
                $reflProperty->setValue($this, $reflProperty->getValue($original));
            }
            unset($this->_entityPersister, $this->_identifier);
        }
        
    }
}