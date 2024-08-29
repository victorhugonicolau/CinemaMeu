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
    final tema = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(
        left: 4,
        right: 4,
        top: 2,
        bottom: 2,
      ),
      child: Material(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              Image.network(
                filme.poster,
                height: 200,
                fit: BoxFit.fitHeight,
              ),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.all(8.0),
                constraints: const BoxConstraints(
                  minHeight: 200,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      filme.titulo,
                      style: tema.textTheme.titleLarge,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Duração: ${filme.duracao.toString()}min",
                          style: tema.textTheme.bodySmall,
                        ),
                        Text(
                          "Classificação: ${filme.classificacao}",
                          style: tema.textTheme.bodySmall,
                        )
                      ],
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: const EdgeInsets.only(top: 3),
                      child: Text(
                        filme.sinopse,
                        style: tema.textTheme.bodySmall,
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
