import 'package:cinepoli/pages/cinema_page.dart';
import 'package:cinepoli/pages/filme_page.dart';
import 'package:cinepoli/util/tema.dart';
import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cinemeu",
      theme: tema(),
      initialRoute: "/",
      routes: {
        "/": (_) => const CinemaPage(),
        "/filme": (_) => const FilmePage(),
      },
    );
  }
}
