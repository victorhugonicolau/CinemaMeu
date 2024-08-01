import 'package:cinepoli/componentes/cinema_item.dart';
import 'package:cinepoli/vm/cinema_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CinemaPage extends StatelessWidget {
  const CinemaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<CinemaViewModel>(context);
    final cinemas = vm.cinemas;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cinema"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: cinemas.length,
        itemBuilder: (context, index) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Navigator.pushNamed(
            context,
            "/filme",
          ),
          child: CinemaItem(
            cinema: cinemas[index],
          ),
        ),
      ),
    );
  }
}
