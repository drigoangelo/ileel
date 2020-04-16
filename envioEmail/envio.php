<?php
// Import PHPMailer classes into the global namespace
// These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

// Load Composer's autoloader
require 'vendor/autoload.php';

// Instantiation and passing `true` enables exceptions
$mail = new PHPMailer(true);

try {
    //Server settings
    $mail->SMTPDebug = 2;                                       // Enable verbose debug output
    $mail->isSMTP();                                            // Set mailer to use SMTP
    $mail->Host       = 'smtp.ufu.br';  // Specify main and backup SMTP servers
    $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
    $mail->Username   = 'labvirtual@ileel.ufu.br';                     // SMTP username
    $mail->Password   = 'lab2018virtual';                               // SMTP password
    $mail->SMTPSecure = 'tls';                                  // Enable TLS encryption, `ssl` also accepted
    $mail->Port       = 587;                                    // TCP port to connect to

    //Recipients
    $mail->setFrom('labvirtual@ileel.ufu.br', 'remetente');
    $mail->addAddress('victor.htp@hotmail.com', 'destinatário');     // Add a recipient
    

    // Content
    $mail->isHTML(true);                                  // Set email format to HTML
    $mail->Subject = 'Assunto do email';
    $mail->Body    = 'Corpo da mensagem';
    $mail->AltBody = 'Corpo da mensagem sem formatação HTML';

    $mail->send();
    echo 'Mensagem enviada com sucesso!!';
} catch (Exception $e) {
    echo "Mensagem não foi enviada.Error: {$mail->ErrorInfo}";
}