<?php
    
    class Usuario
    {
        public $id;
        public $cpf;
        public $nome;
        public $senha;
        public $email;
        public $dt_nascimento;
        public $sexo;
        public $nacionalidade;
        public $cidade;
        public $estado;
        public $estrangeiro;
        public $video_atual;

        public $conn;

        public function save()
        {
            $estrangeiro = $this->estrangeiro == 1 ? 'true' : 'false';

            $sql = "INSERT INTO dataset.tb_usuario(
                        nome, 
                        cpf, 
                        senha, 
                        email, 
                        dt_nascimento, 
                        sexo, 
                        nacionalidade, 
                        cidade, 
                        estado, 
                        estrangeiro)
                    VALUES(
                        '$this->nome',
                        '$this->cpf',
                        '$this->senha',
                        '$this->email',
                        '$this->dt_nascimento',
                        '$this->sexo',
                        '$this->nacionalidade',
                        '$this->cidade',
                        '$this->estado', 
                        $estrangeiro);";

            $resultado = mysqli_query($this->conn, $sql);
            
            return $resultado;
        }

        public function validar()
        {
            //verificar se o cpf ja existe
            $sql = " select * from dataset.tb_usuario where cpf = '$this->cpf' ";
            $resultado = mysqli_query($this->conn, $sql);
            if (mysqli_num_rows($resultado) > 0) {
                echo ' CPF já cadastrado, por favor acesse sua conta ou recupere sua senha!';
                return false;
            }
        
            //verificar se o e-mail ja existe
    		$sql = " select * from dataset.tb_usuario where email = '$this->email' ";
    		$resultado = mysqli_query($this->conn, $sql);
			if (mysqli_num_rows($resultado) > 0){
                echo 'Esse Email já está em uso, por favor utilize outro!';
                return false;
			}
        
            if($this->get_idade() < 18){
                echo 'Idade insuficiente!';
                return false;
            }
        
            return true;
        }

        public function validar_senha($cpf, $senha)
        {
            $sql = "SELECT senha FROM dataset.tb_usuario WHERE cpf = '$cpf'";
            $res = mysqli_query($this->conn, $sql);
        
            if (mysqli_num_rows($res) > 0) {
                $res->data_seek(0);
                $row = $res->fetch_assoc();
                if (password_verify($senha, $row['senha'])) {
                    return true;
                }
            }
            return false;
        }

        public function buscar($cpf)
        {
            $sql = "SELECT id, cpf, nome, email, dt_nascimento, sexo, nacionalidade, cidade, estado, estrangeiro
                    FROM dataset.tb_usuario
                    WHERE cpf = '{$cpf}'";
            $res = mysqli_query($this->conn, $sql);
        
            $resultado = new Usuario;
        
            if (mysqli_num_rows($res) > 0) {
                $res->data_seek(0);
                if ($row = $res->fetch_assoc()) {
                    $resultado->id = $row['id'];
                    $resultado->cpf = $row['cpf'];
                    $resultado->nome = $row['nome'];
                    $resultado->email = $row['email'];
                    $resultado->sexo = $row['sexo'];
                    $resultado->dt_nascimento = $row['dt_nascimento'];
                    $resultado->nacionalidade = $row['nacionalidade'];
                    $resultado->cidade = $row['cidade'];
                    $resultado->estado = $row['estado'];
                    $resultado->estrangeiro = $row['estrangeiro'];
                    $resultado->conn = $this->conn;
                }
            }
            return $resultado;
        }

        public function get_idade()
        {
            $atual = date('Y/m/d'); //Recebe a data atual
            $data1 = explode("/","$atual"); //Divide a data atual em dia, mês e ano
            $dAtual = $data1[2];
            $mAtual = $data1[1];
            $yAtual = $data1[0];
        
            $data2 = explode("-","$this->dt_nascimento"); //Divide a data de nascimento em dia, mês e ano
            $dNascimento = $data2[2];
            $mNascimento = $data2[1];
            $yNascimento = $data2[0];

            $idade = $yAtual - $yNascimento - 1; //Calcula a idade, subtraindo o ano atual do ano de nascimento da pessoa
            //Subtrai um da idade, pois esse será recebido apenas se a pessoa já fez seu aniversário esse ano

            if($mAtual > $mNascimento){ //Verifica se já passou o dia do aniversário
                $idade = $idade + 1;
            }
            else{
                if($mAtual == $mNascimento && $dAtual >= $dNascimento){ //Verifica se está no mês do aniversário, e se estiver verifica se já passou o dia
                        $idade = $idade + 1;
                }
            }

            return $idade;
        }
    }
?>