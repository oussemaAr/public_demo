import 'package:flutter/material.dart';

import '../../../../common/widget/information_text_widget.dart';

class PokemonItem extends StatelessWidget {
  final PokemonUiModel pokemon;

  const PokemonItem(this.pokemon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          informationText(text: pokemon.name),
          Expanded(
            child: Image.network(
              pokemon.imageUrl,
            ),
          ),
          informationText(text: "#${pokemon.id}", textAlign: TextAlign.end),
        ],
      ),
    );
  }
}

class PokemonUiModel {
  final int id;
  final String name;
  final String imageUrl;

  PokemonUiModel({
    required this.name,
    required this.id,
    required this.imageUrl,
  });
}
