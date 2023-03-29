import 'package:demoapp/features/home/data/model/pokemon_data_model.dart';

extension IdToUrl on PokemonDataModel {
  String generateImageUrl() {
    if (this.id! < 10) {
      return "https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/00${this.id}.png";
    } else if (this.id! < 100) {
      return "https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/0${this.id}.png";
    } else {
      return "https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/${this.id}.png";
    }
  }
}
