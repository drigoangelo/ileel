$(function() {

    let next = function next() {
        upload()
            .done(carregarVideo)
            .done(atualizarContador)
            .done(function() {
                alert("Vídeo enviado com sucesso!");
            });
        
    };

    let carregarVideo = function carregarVideo() {
        return $.ajax("../servico/next_video.php")
            .done(function(data) {
                var pontos = "..";
                $("#video_modelo")[0].src = pontos.concat(data.caminho_video);
                $("#legenda")[0].src = pontos.concat(data.caminho_legenda);
                $("#video_modelo")[0].textTracks[0].mode = 'showing';
                $("#video_modelo")[0].load();

                $("#video_name").html(data.num_grupo + '.' + data.num_video);
            })
            .fail(function(jqXHR, textStatus, errorThrown) {
                console.error("Error loading ajax", textStatus, errorThrown);
            });
    };

    let atualizarContador = function atualizarContador() {
        return $.ajax("../servico/qtd_videos_enviados.php")
            .done(function(data) {
                $("#contador").html(data);
            })
            .fail(function(jqXHR, textStatus, errorThrown) {
                console.error("Error loading ajax", textStatus, errorThrown);
            });
    };

    (function init() {
        $("#btn_enviar").click(next);
        $("#btnSair").click(sair);
        //carregarVideo();

    })();

    function sair(){
        alert("Parabéns pela sua participação.\nAgradecemos muitíssimo pela sua contribuição.\nEquipe ELLA.");
    }
});
