import 'dart:convert';

class Base {
  int? hp;
  int? attack;
  int? defense;
  int? sp;
  int? speed;

  Base({this.hp, this.attack, this.defense, this.sp, this.speed});

  factory Base.fromMap(Map<String, dynamic> data) => Base(
        hp: data['HP'] as int?,
        attack: data['Attack'] as int?,
        defense: data['Defense'] as int?,
        sp: data['Sp. Attack'] as int?,
        speed: data['Speed'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'HP': hp,
        'Attack': attack,
        'Defense': defense,
        'Sp': sp,
        'Speed': speed,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Base].
  factory Base.fromJson(String data) {
    return Base.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Base] to a JSON string.
  String toJson() => json.encode(toMap());
}
