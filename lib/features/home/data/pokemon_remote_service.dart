import 'dart:convert';
import 'dart:io';

import 'package:demoapp/features/home/data/model/pokemon_data_model.dart';
import 'package:dio/dio.dart';

class PokemonRemoteService {
  Future<List<PokemonDataModel>?> fetchPokemon() async {
    var response = await Dio().get(
      "https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/pokedex.json",
    );
    if (response.statusCode == HttpStatus.ok) {
      List<dynamic> listPokemon = jsonDecode(response.data);
      return listPokemon.map((e) => PokemonDataModel.fromMap(e)).toList();
    } else {
      return null;
    }
  }

  //Future<List<PokemonDataModel>?> fetchPokemonViaHttp() async {
  // Uri baseUrl = Uri.https(
  //   "raw.githubusercontent.com",
  //   "fanzeyi/pokemon.json/master/pokedex.json",
  // );
  // var response = await http.get(baseUrl);
  // if (response.statusCode == HttpStatus.ok) {
  //   List<dynamic> list = jsonDecode(response.body);
  //   return list
  //       .map(
  //         (pokemonApiModel) => PokemonDataModel.fromMap(pokemonApiModel),
  //       )
  //       .toList();
  // } else {
  //   return null;
  // }
  //}
}
