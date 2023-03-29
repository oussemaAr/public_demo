import 'package:demoapp/features/home/ui/pokemon_controller.dart';
import 'package:demoapp/features/home/ui/widget/home_body.dart';
import 'package:demoapp/features/home/ui/widget/home_search_bar.dart';
import 'package:demoapp/features/home/ui/widget/home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    PokemonController _controller = Get.put(PokemonController());

    return Scaffold(
      appBar: homeAppBar(),
      body: Column(
        children: [
          HomeSearchBar(
            onTextUpdated: (searchText) {
              _controller.filter(searchText);
            },
          ),
          GetBuilder<PokemonController>(builder: (controller) {
            return controller.isLoading
                ? Center(child: CircularProgressIndicator())
                : Expanded(
                    child: HomeBody(
                      pokemonList: controller.filtredPokemonList,
                    ),
                  );
          }),
        ],
      ),
    );
  }
}
