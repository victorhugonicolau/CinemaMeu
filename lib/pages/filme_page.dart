import 'package:cinepoli/componentes/filme_item.dart';
import 'package:cinepoli/vm/cinema_vm.dart';
import 'package:cinepoli/vm/filme_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilmePage extends StatelessWidget {
  const FilmePage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;

    final idCinema = (arguments ?? "0") as String;

    final filmeVm = Provider.of<FilmeVIewModel>(context);
    filmeVm.useCinema(idCinema);
    final filmes = filmeVm.filmes;

    final cinemaVM = Provider.of<CinemaViewModel>(context);
    final title = cinemaVM.getById(idCinema)?.nome;

    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? "Desconhecido"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: filmes.length,
        itemBuilder: (context, index) => FilmeItem(
          filme: filmes[index],
        ),
      ),
    );
  }
}
