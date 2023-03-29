import 'package:demoapp/features/home/ui/widget/pokemon_item.dart';
import 'package:get/get.dart';

import '../domain/pokemon_repository.dart';

class PokemonController extends GetxController {
  final PokemonRepository _repository = PokemonRepository();

  List<PokemonUiModel> pokemonList = [];
  bool isLoading = true;

  @override
  void onInit() {
    super.onInit();
    _repository.fetchPokemon()?.then((value) {
      pokemonList.addAll(value!);
      isLoading = false;
      update();
    });
  }
}
