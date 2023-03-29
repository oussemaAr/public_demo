import 'dart:convert';

class Name {
  String? english;
  String? japanese;
  String? chinese;
  String? french;

  Name({this.english, this.japanese, this.chinese, this.french});

  factory Name.fromMap(Map<String, dynamic> data) => Name(
        english: data['english'] as String?,
        japanese: data['japanese'] as String?,
        chinese: data['chinese'] as String?,
        french: data['french'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'english': english,
        'japanese': japanese,
        'chinese': chinese,
        'french': french,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Name].
  factory Name.fromJson(String data) {
    return Name.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Name] to a JSON string.
  String toJson() => json.encode(toMap());
}
