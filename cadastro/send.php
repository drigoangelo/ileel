<?php

	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\Exception;

	// Conexão
	require_once '../db/db_connect.php';
	require_once '../modelo/Usuario.php';

	require_once '../lib/PHPMailer/src/Exception.php';
    require_once '../lib/PHPMailer/src/PHPMailer.php';
    require_once '../lib/PHPMailer/src/SMTP.php';

	// Sessão
	session_start();

	// -----------------------------------------------------------------------------------------------------
	// Cria um objeto Usuario com base nas informacoes em $_POST
	// -----------------------------------------------------------------------------------------------------
	function criar_usuario($conn)
	{
		$usr = new Usuario;
		$usr->conn = $conn;

		$usr->nome = mysqli_escape_string($conn, $_POST['nome']);
		if(($_POST['cpf']) != ""? $cpf = $_POST['cpf'] : $cpf = $_POST['ID']);
		$usr->cpf = $cpf; 
		$usr->senha = password_hash($_POST['senha'], PASSWORD_DEFAULT);
		$usr->email = mysqli_escape_string($conn, $_POST['email1']);
		$usr->dt_nascimento = mysqli_escape_string($conn, $_POST['nascimento']);
		if (mysqli_escape_string($conn, $_POST['sexo']) == 'Masculino') {
			$usr->sexo = 'Masculino';
		} else {
			if (mysqli_escape_string($conn, $_POST['sexo']) == 'Feminino') {
				$usr->sexo = 'Feminino';
			} else {
				$usr->sexo = mysqli_escape_string($conn, $_POST['outro']);
			}
		}

		$usr->nacionalidade = mysqli_escape_string($conn, $_POST['nacionalidade']);
		$usr->cidade = mysqli_escape_string($conn, $_POST['cidade']);
		$usr->estado = mysqli_escape_string($conn, $_POST['uf']);
		if(($_POST['cpf']) == ""? $estrangeiro = 1 : $estrangeiro = 0);
		$usr->estrangeiro = $estrangeiro;

		return $usr;
	}

	// -----------------------------------------------------------------------------------------------------
	// Envia email de confirmacao do cadastro com o termo de consentimento anexo para o nome e email informados
	// -----------------------------------------------------------------------------------------------------
	function enviar_email($nome, $email)
	{
		$mail = new PHPMailer(true);

		try {
			
			$mail->isSMTP();
			$mail->CharSet = 'UTF-8';
			$mail->Host       = 'smtp.ufu.br';
			$mail->SMTPAuth   = true;
			$mail->Username   = 'labvirtual@ileel.ufu.br';
			$mail->Password   = 'lab2018virtual';
			$mail->SMTPSecure = 'tls';
			$mail->Port       = 587;
			
			$mail->setFrom('labvirtual@ileel.ufu.br', 'Equipe ELLA');
			$mail->addAddress($email, $nome);
			
			$mail->isHTML(false);
			$mail->Subject = 'Confirmação do Cadastro - Site de Coleta de Dados do projeto ELLA';
			$mail->Body = "Olá
                
Obrigado por se cadastrar para a coleta de dados do Laboratório Virtual de Aprendizagem.
Enviamos, em anexo, uma cópia do Termo de Consentimento Livre e Esclarecido.

Atenciosamente,
Equipe ELLA

Observação: Esta é uma mensagem automática. Por favor, não responda a este e-mail.
Se precisar entrar em contato, envie sua mensagem para labvirtual@ileel.ufu.br.
-------------------------------------------------------------------------------
Hello

Thank you for registering for the Virtual Learning Lab data collection.
We have enclosed a copy of the Free and Informed Consent Form.

Regards,
The ELLA Team

Note: This is an automated message. Please do not reply to this email.
If you need to get in touch, send your message to labvirtual@ileel.ufu.br.";
                
			$mail->addAttachment('../termo/TERMO DE CONSENTIMENTO LIVRE E ESCLARECIDO português e inglês.pdf');
			$mail->send();
		} catch (Exception $e) {
			echo "Mensagem não foi enviada.Error: {$mail->ErrorInfo}";
			
		}
	}

	// -----------------------------------------------------------------------------------------------------
	// Acao executada quando recebe requisicao do tipo POST:
	// -----------------------------------------------------------------------------------------------------
	if (isset($_POST['btn'])) {

		$erros = array();

		$usr = criar_usuario($conn);

		if($usr->validar()) // Se o usuario estiver valido, prossegue com o cadastro 
		{
			$res = $usr->save();

			if ($res) { // Cadastrado com sucesso
				enviar_email($usr->nome, $usr->email);
				$_SESSION['cpf'] = $_POST['cpf'];
				$_SESSION['senha'] = $_POST['senha'];

				header('Location: ../');

			} else { // Erro no cadastro				
				echo "Erro: Por favor, insira novamente os dados cadastrais! Caso o erro persista contate o ILEEL.";
			}
		}
	}

?>
