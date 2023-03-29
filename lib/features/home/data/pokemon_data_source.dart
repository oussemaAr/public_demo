import 'package:demoapp/features/home/data/pokemon_remote_service.dart';

import 'model/pokemon_data_model.dart';

class PokemonDataSource {
  final PokemonRemoteService _remoteService = PokemonRemoteService();

  Future<List<PokemonDataModel>?> fetchPokemon() {
    return _remoteService.fetchPokemon();
  }
}
