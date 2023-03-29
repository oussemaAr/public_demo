import 'package:demoapp/common/extension.dart';
import 'package:demoapp/features/home/data/pokemon_data_source.dart';
import 'package:demoapp/features/home/ui/widget/pokemon_item.dart';

class PokemonRepository {
  final PokemonDataSource _dataSource = PokemonDataSource();

  Future<List<PokemonUiModel>?>? fetchPokemon() async {
    var pokemonList = await _dataSource.fetchPokemon();
    return pokemonList
        ?.map(
          (pokemonDataModel) => PokemonUiModel(
              name: pokemonDataModel.name?.english ?? "",
              id: pokemonDataModel.id ?? 0,
              imageUrl: pokemonDataModel.generateImageUrl()),
        )
        .toList();
  }
}
