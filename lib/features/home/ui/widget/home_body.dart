import 'package:demoapp/features/home/ui/widget/pokemon_item.dart';
import 'package:demoapp/features/pokemondetail/pokemon_detail_page.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  final List<PokemonUiModel> pokemonList;

  const HomeBody({super.key, required this.pokemonList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: pokemonList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(PokemonDetailPage.routeName,
                arguments: pokemonList[index]);
          },
          child: PokemonItem(pokemonList[index]),
        );
      },
    );
  }
}
