import 'package:demoapp/features/home/data/pokemon_remote_service.dart';

void main() async {
  final PokemonRemoteService service = PokemonRemoteService();
  var result = await service.fetchPokemon();
  print(result![0].id);
}
