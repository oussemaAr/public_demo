import 'package:demoapp/features/home/domain/pokemon_repository.dart';
import 'package:demoapp/features/home/ui/widget/pokemon_item.dart';
import 'package:demoapp/features/pokemondetail/pokemon_detail_page.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  final PokemonRepository _repository = PokemonRepository();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _repository.fetchPokemon(),
      builder: (context, snapshot) {
        return snapshot.hasData
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        PokemonDetailPage.routeName,
                        arguments: snapshot.data![index],
                      );
                    },
                    child: PokemonItem(snapshot.data![index]),
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              );
      },
    );
  }
}
