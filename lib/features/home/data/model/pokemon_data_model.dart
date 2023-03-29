import 'dart:convert';

import 'base.dart';
import 'name.dart';

class PokemonDataModel {
  int? id;
  Name? name;
  List<String>? type;
  Base? base;

  PokemonDataModel({this.id, this.name, this.type, this.base});

  factory PokemonDataModel.fromMap(Map<String, dynamic> data) {
    return PokemonDataModel(
      id: data['id'] as int?,
      name: data['name'] == null
          ? null
          : Name.fromMap(data['name'] as Map<String, dynamic>),
      base: data['base'] == null
          ? null
          : Base.fromMap(data['base'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name?.toMap(),
        'type': type,
        'base': base?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PokemonDataModel].
  factory PokemonDataModel.fromJson(String data) {
    return PokemonDataModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PokemonDataModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
