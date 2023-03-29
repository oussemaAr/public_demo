import 'package:demoapp/features/home/data/model/pokemon_data_model.dart';
import 'package:demoapp/features/home/ui/home_page.dart';
import 'package:demoapp/features/pokemondetail/pokemon_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/i18n/messages.dart';

void main() {
  runApp(MainWidget());
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale('FR'), // translations will be displayed in that locale
      fallbackLocale: Locale('en',
          'US'), // specify the fallback locale in case an invalid locale is selected.

      translations: Messages(),
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.blueAccent,
        primarySwatch: Colors.teal,
      ),
      initialRoute: "/",
      routes: {
        HomePage.routeName: (context) => HomePage(),
        PokemonDetailPage.routeName: (context) => PokemonDetailPage()
      },
    );
  }
}
