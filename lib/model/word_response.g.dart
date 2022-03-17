// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordResponse _$WordResponseFromJson(Map<String, dynamic> json) => WordResponse(
      word: json['word'] as String,
      phonetics: (json['phonetics'] as List<dynamic>)
          .map((e) => Phonetic.fromJson(e as Map<String, dynamic>))
          .toList(),
      meanings: (json['meanings'] as List<dynamic>)
          .map((e) => Meaning.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WordResponseToJson(WordResponse instance) =>
    <String, dynamic>{
      'word': instance.word,
      'phonetics': instance.phonetics,
      'meanings': instance.meanings,
    };
