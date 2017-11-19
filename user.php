<?php
header("content-type:text/html;charset=utf-8");
mysql_connect('localhost','root','root');
mysql_query('set names utf8');
mysql_query('use users');

$action = isset($_POST['action'])?$_POST['action']:'';

if($action == 'sel'){
    $sql = "select * from user";
    $res = mysql_query($sql);
    $data = [];
    while ($row = mysql_fetch_assoc($res)){
        $data[] = $row;
    }
    echo json_encode($data);
}

if($action == 'add'){
        $user = isset($_POST['user'])?$_POST['user']:null;
        $pass = isset($_POST['pass'])?$_POST['pass']:null;
        $sql = "insert into user values(null,'$user',$pass,default)";
        $res = mysql_query($sql);
        if($res && mysql_affected_rows() > 0) {
            echo 1;
        } else {
            echo 0;
        }
}
if($action == 'update'){
    $id = isset($_POST['id'])?$_POST['id']:null;
    $user = isset($_POST['user'])?$_POST['user']:null;
    $pass = isset($_POST['pass'])?$_POST['pass']:null;
    $ip = isset($_POST['ip'])?$_POST['ip']:'192.168.0.1';
    $sql = "update user set username='$user',password='$pass' where id= $id ";
    $res = mysql_query($sql);
    if($res && mysql_affected_rows() > 0) {
        echo 1;
    } else {
        echo 0;
    }
}
if($action == 'del'){
    $id = $_POST['id'];
    $sql = "delete from user where id = '$id'";
    $res = mysql_query($sql);
    if($res && mysql_affected_rows() > 0){
        echo 1;
    }else{
        echo 0;
    }
}

