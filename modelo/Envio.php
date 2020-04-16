<?php
    use Video;

class Envio {
    public $id;
    public $id_video;
    public $id_usuario;
    public $caminho;
    public $data_criacao;
    public $data_envio;
    public $conn;

    public function concluir_envio()
    {
        $status = Video::ENVIO_STATUS_CONCLUIDO;
        $sql = "UPDATE dataset.tb_envio
                SET caminho_envio = '$this->caminho',
                    status = $status,
                    data_envio = now()
                WHERE id_usuario = {$this->id_usuario} AND id_video = {$this->id_video}";
        echo $sql;
        return $this->conn->query($sql);
    }
}

?>