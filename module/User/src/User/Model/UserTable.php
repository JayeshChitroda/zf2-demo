<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
namespace User\Model;

 use Zend\Db\TableGateway\TableGateway;

 class UserTable
 {
     protected $tableGateway;

     public function __construct(TableGateway $tableGateway)
     {
         $this->tableGateway = $tableGateway;
     }

     public function fetchAll()
     {
         $resultSet = $this->tableGateway->select();
         return $resultSet;
     }

     public function getUser($id)
     {
         $id  = (int) $id;
         $rowset = $this->tableGateway->select(array('id' => $id));
         $row = $rowset->current();
         if (!$row) {
             throw new \Exception("Could not find row $id");
         }
         return $row;
     }

     public function saveUser(User $user)
     {
         $data = array(
             'username' => $user->username,
             'firstname'  => $user->firstname,
             'lastname'  => $user->lastname,
             'email'  => $user->email,
             'phone'  => $user->phone,
             'created'  => date('Y-m-d h:i:s'),
             'modified'  => date('Y-m-d h:i:s'),
         );

         $id = (int) $user->id;
         if ($id == 0) {
             $this->tableGateway->insert($data);
         } else {
             if ($this->getUser($id)) {
                 $this->tableGateway->update($data, array('id' => $id));
             } else {
                 throw new \Exception('User id does not exist');
             }
         }
     }

     public function deleteUser($id)
     {
         $this->tableGateway->delete(array('id' => (int) $id));
     }
 }
?>
