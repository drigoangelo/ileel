<?php
    session_start();
    require_once './db/db_connect.php';
    require_once './modelo/Usuario.php';
    require_once './modelo/Video.php';
    require_once './modelo/Envio.php';

    if (!isset($_SESSION['cpf'])) {
    	header('Location: ./login/login.php?erro=1');
    }

    try {
        $cpf = $_SESSION['cpf'];
        $modulo = $_SESSION['modulo'];
        $video = $_SESSION['num_video'];
        $video_id = $_SESSION['video_id'];
    
        unset($_SESSION['num_video']);
        unset($_SESSION['video_id']);

        $usuario = new Usuario;
        $usuario->conn = $conn;
        $usuario = $usuario->buscar($cpf);
    
        // Salva o arquivo no disco
        $caminho = "envios/" . $usuario->id . "_" . $modulo . "_" . $video . ".webm";
        $resulado_arquivo = file_put_contents($caminho, file_get_contents($_FILES['blob']['tmp_name']));

        $envio = new Envio;
        $envio->conn = $conn;
        $envio->id_usuario = $usuario->id;
        $envio->id_video = $video_id;
        $envio->caminho = $caminho;

        $envio->concluir_envio();

    } catch (Exception $e) {
        echo $e->getMessage();
    }
?>
