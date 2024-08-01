import 'package:cinepoli/entidade/filme.dart';

class RepositorioFilme {
  List<Filme> select() {
    return <Filme>[
      Filme(
        titulo: "Tudo em Todo o Lugar ao Mesmo Tempo",
        poster: "https://br.web.img2.acsta.net/r_1920_1080/pictures/22/05/16/17/59/5165498.jpg",
        sinopse: "filme bom",
        duracao: 139,
        classificacao: "adulto",
      ),

      Filme(
        titulo: "Click",
        poster: "https://br.web.img2.acsta.net/r_1920_1080/medias/nmedia/18/87/03/15/19871286.jpg",
        sinopse: "filme mais ou menos",
        duracao: 108,
        classificacao: "livre",
      ),
    ];
  }
}
