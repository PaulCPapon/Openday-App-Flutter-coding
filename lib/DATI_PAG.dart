import 'package:meta/meta.dart';

class Scuola {

  Scuola({
    @required this.Nome,
    @required this.avatar,
    @required this.backdropPhoto,
    @required this.location,
    @required this.descri_zione,
    @required this.classi,
  });

  final String Nome;
  final String avatar;
  final String backdropPhoto;
  final String location;
  final String descri_zione;
  final List<classe> classi;

}

class classe {
  classe({
    @required this.titolo,
    @required this.foto,
    @required this.link,
  });

  final String titolo;
  final String foto;
  final String link;
}
