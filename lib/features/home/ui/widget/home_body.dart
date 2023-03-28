import 'package:demoapp/features/home/ui/widget/pokemon_item.dart';
import 'package:flutter/material.dart';

import '../../../../fake/pokemon_fake_data.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: pokemonList.length,
      itemBuilder: (context, index) {
        return PokemonItem(pokemonList[index]);
      },
    );
  }
}
