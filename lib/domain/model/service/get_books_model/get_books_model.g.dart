// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_books_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetBooksModel _$GetBooksModelFromJson(Map<String, dynamic> json) =>
    GetBooksModel(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      imageUrl: json['imageUrl'] as String?,
      pdfFile: json['pdfFile'] as String?,
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetBooksModelToJson(GetBooksModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'pdfFile': instance.pdfFile,
      '__v': instance.v,
    };
