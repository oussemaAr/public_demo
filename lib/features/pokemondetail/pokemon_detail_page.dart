import 'package:demoapp/features/home/ui/widget/pokemon_item.dart';
import 'package:flutter/material.dart';

class PokemonDetailPage extends StatelessWidget {
  static const routeName = "/pokemonDetail";

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PokemonUiModel;
    print(args.name);
    return Material();
  }
}
