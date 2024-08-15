import 'package:cinepoli/entidade/cinema.dart';

class RepositorioCinema {
  List<Cinema> select() {
    return <Cinema>[
      Cinema(
        id: "1",
        nome: "Cinema Matão",
        latitude: -21.6015644,
        longitude: -48.3688865,
        endereco: "Rua João Pessoa, 842 - Centro",
        telefone: "16633847777",
        salas: 2,
      ),
      Cinema(
        id: "2",
        nome: "Cinema Taquaritinga",
        latitude: -21.4057353,
        longitude: -48.5079264,
        endereco: "Rua da República, 929",
        telefone: "16633847777",
        salas: 1,
      ),
    ];
  }
}
