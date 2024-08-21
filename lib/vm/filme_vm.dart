import 'package:cinepoli/entidade/filme.dart';
import 'package:cinepoli/repositorio/repositorio_filme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilmeVIewModel extends ChangeNotifier {
  late List<Filme> filmes;

  FilmeVIewModel useLista(List<Filme> filmes) {
    this.filmes = filmes;
    notifyListeners();
    return this;
  }

  void useCinema(String id) {
    this.filmes = RepositorioFilme().select(id);
    notifyListeners();
  }

  static ChangeNotifierProvider<FilmeVIewModel> novo() =>
      ChangeNotifierProvider(
        create: (_) => FilmeVIewModel().useLista([]),
      );
}
