import 'package:cinepoli/app.dart';
import 'package:cinepoli/vm/cinema_vm.dart';
import 'package:cinepoli/vm/filme_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Provedor extends StatelessWidget {
  const Provedor({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        CinemaViewModel.novo(),
        FilmeVIewModel.novo(),
      ],
      child: const Aplicacao(),
    );
  }
}
