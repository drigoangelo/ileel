<?php
	require_once './db/db_connect.php';
	require_once './modelo/Usuario.php';

	// Verifica se o caminho buscado termina com .mp4 ou .vtt
	// caso termine com qualquer dessas extensoes, nao prossegue com o redirecionamento
	$extensao = substr($_SERVER['REQUEST_URI'], -4);
	if ($extensao === '.mp4' || $extensao === '.vtt' || $extensao === '.ico') return;

	$usuario = new Usuario;
	$usuario->conn = $conn;
	
	session_start();
	
	if (isset($_SESSION['cpf']) && isset($_SESSION['senha'])
		&& $usuario->validar_senha($_SESSION['cpf'], $_SESSION['senha'])) {

		header('Location:./escolherModulos/escolherModulos.php');
	} else {
		header('Location:./login/');
	}
?>