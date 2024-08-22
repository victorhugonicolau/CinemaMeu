import 'package:cinepoli/entidade/filme.dart';
import 'package:flutter/material.dart';

class FilmeItem extends StatelessWidget {
  final Filme filme;

  const FilmeItem({
    super.key,
    required this.filme,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.only(
        left: 4,
        right: 4,
        top: 2,
        bottom: 2,
      ),
      child: Material(
        elevation: 5,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(filme.poster),
            SizedBox(
              width: 330,
              child: Column(
                children: [
                  Text(filme.titulo, style: TextTheme.bodyMedium),
                  Text('Duração - ${filme.duracao} mins',
                      style: TextTheme.bodySmall),
                  Text('CLassificação - ${filme.classificacao}',
                      style: TextTheme.bodySmall),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
