
import 'dart:convert';

import 'package:blocpattern/model/meaning.dart';
import 'package:blocpattern/model/phonetic.dart';
import 'package:json_annotation/json_annotation.dart';


part 'word_response.g.dart';

@JsonSerializable()
class WordResponse {
  String word;
  List<Phonetic> phonetics;
  List<Meaning> meanings;

  WordResponse({required this.word, required this.phonetics,required  this.meanings});

  factory WordResponse.fromJson(Map<String, dynamic> json) => _$WordResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WordResponseToJson(this);
}