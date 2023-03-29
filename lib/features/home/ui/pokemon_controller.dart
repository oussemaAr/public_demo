import 'package:demoapp/features/home/ui/widget/pokemon_item.dart';
import 'package:get/get.dart';

import '../domain/pokemon_repository.dart';

class PokemonController extends GetxController {
  final PokemonRepository _repository = PokemonRepository();

  List<PokemonUiModel> pokemonList = [];
  List<PokemonUiModel> filtredPokemonList = [];
  bool isLoading = true;

  @override
  void onInit() {
    super.onInit();
    _repository.fetchPokemon()?.then((value) {
      pokemonList.addAll(value!);
      filtredPokemonList.addAll(value!);
      isLoading = false;
      update();
    });
  }

  filter(String searchText) {
    filtredPokemonList.assignAll(
      pokemonList.where(
        (element) => element.name.toLowerCase().contains(searchText),
      ),
    );
    update();
  }
}
