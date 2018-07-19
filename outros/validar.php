<?php
require_once('config.php');
$banco = new banco();
$login = $_POST['email'];
$senha = $_POST['senha'];
if()

$usuario = $banco->select("SELECT *FROM tb_usuarios"WHERE
      login = :login AND senha = :senha",array("login" => $login
	 , ":senha" => $senha));
	  if(( $usuario['login'];!= '') 






?>

