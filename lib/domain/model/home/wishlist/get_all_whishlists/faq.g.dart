// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Faq _$FaqFromJson(Map<String, dynamic> json) => Faq(
      id: json['_id'] as String?,
      question: json['question'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$FaqToJson(Faq instance) => <String, dynamic>{
      '_id': instance.id,
      'question': instance.question,
      'answer': instance.answer,
    };
