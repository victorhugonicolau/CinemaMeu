import 'package:cinepoli/componentes/cinema_item.dart';
import 'package:cinepoli/componentes/mapa.dart';
import 'package:cinepoli/vm/cinema_vm.dart';
import 'package:cinepoli/vm/filme_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CinemaPage extends StatelessWidget {
  const CinemaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<CinemaViewModel>(context);
    final cinemas = vm.cinemas;

    final screenSize = MediaQuery.of(context).size;
    final listHeight = screenSize.height * 0.4;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cinema"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Mapa(
                cinemas: cinemas,
              ),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            height: listHeight,
            child: ListView.builder(
              itemCount: cinemas.length,
              itemBuilder: (context, index) => GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  final filmeVM = Provider.of<FilmeVIewModel>(
                    context,
                    listen: false,
                  );

                  filmeVM.useCinema(cinemas[index].id);

                  Navigator.pushNamed(
                    context,
                    "/filme",
                    arguments: cinemas[index].id,
                  );
                },
                child: CinemaItem(
                  cinema: cinemas[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
