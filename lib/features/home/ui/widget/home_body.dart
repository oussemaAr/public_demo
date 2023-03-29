import 'package:demoapp/features/home/domain/pokemon_repository.dart';
import 'package:demoapp/features/home/ui/pokemon_controller.dart';
import 'package:demoapp/features/home/ui/widget/pokemon_item.dart';
import 'package:demoapp/features/pokemondetail/pokemon_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeBody extends StatelessWidget {
  PokemonController _controller = Get.put(PokemonController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PokemonController>(
      builder: (controller) {
        return controller.isLoading
            ? Center(child: CircularProgressIndicator())
            : GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                            PokemonDetailPage.routeName,
                            arguments: controller.pokemonList[index]);
                      },
                      child: PokemonItem(controller.pokemonList[index]));
                },
              );
      },
    );
  }
}
