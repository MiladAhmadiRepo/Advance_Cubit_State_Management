
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';


part 'definition.g.dart';

@JsonSerializable()
class Definition {
  String definition;
  String? example;
  List<String> synonyms;

  Definition({required this.definition, this.example, required this.synonyms});

  factory Definition.fromJson(Map<String, dynamic> json) => _$DefinitionFromJson(json);

  Map<String, dynamic> toJson() => _$DefinitionToJson(this);
}