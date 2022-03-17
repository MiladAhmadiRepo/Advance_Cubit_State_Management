
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';


part 'phonetic.g.dart';

@JsonSerializable()
class Phonetic {
  String text;
  String audio;

  Phonetic({required this.text, required this.audio});

  factory Phonetic.fromJson(Map<String, dynamic> json) => _$PhoneticFromJson(json);

  Map<String, dynamic> toJson() => _$PhoneticToJson(this);
}