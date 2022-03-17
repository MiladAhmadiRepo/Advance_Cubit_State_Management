
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'definition.dart';


part 'meaning.g.dart';

@JsonSerializable()
class Meaning {
  String partOfSpeech;
  List<Definition> definitions;

  Meaning({required this.partOfSpeech, required this.definitions});

  factory Meaning.fromJson(Map<String, dynamic> json) => _$MeaningFromJson(json);

  Map<String, dynamic> toJson() => _$MeaningToJson(this);
}