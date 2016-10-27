<?php
/**
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2016 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Application;

class Module
{
    const VERSION = '3.0.2dev';

    public function getConfig()
    {
        return include __DIR__ . '/../config/module.config.php';
    }

    public function getServiceConfig()
     {
         return array(
             'factories' => array(
                 'Application\Model\DB\AuthTable' =>  function($sm) {
                     $tableGateway = $sm->get('AuthTableGateway');
                     $table = new AuthTable($tableGateway);
                     return $table;
                 },
                 'AuthTableGateway' => function ($sm) {
                     $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                     $resultSetPrototype = new ResultSet();
                     $resultSetPrototype->setArrayObjectPrototype(new Auth());
                     return new TableGateway('auth', $dbAdapter, null, $resultSetPrototype);
                 },
             ),
         );
     }
}
