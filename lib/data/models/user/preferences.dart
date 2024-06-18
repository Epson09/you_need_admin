import 'dart:convert';

import 'package:collection/collection.dart';

class Preferences {
  String theme;
  String language;

  Preferences({required this.theme, required this.language});

  @override
  String toString() => 'Preferences(theme: $theme, language: $language)';

  factory Preferences.fromMap(Map<String, dynamic> data) => Preferences(
        theme: data['theme'] as String,
        language: data['language'] as String,
      );

  Map<String, dynamic> toMap() => {
        'theme': theme,
        'language': language,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Preferences].
  factory Preferences.fromJson(String data) {
    return Preferences.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Preferences] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Preferences) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => theme.hashCode ^ language.hashCode;
}
