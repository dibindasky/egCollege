import 'package:json_annotation/json_annotation.dart';

part 'get_books_model.g.dart';

@JsonSerializable()
class GetBooksModel {
  @JsonKey(name: '_id')
  String? id;
  String? title;
  String? imageUrl;
  String? pdfFile;
  @JsonKey(name: '__v')
  int? v;

  GetBooksModel({this.id, this.title, this.imageUrl, this.pdfFile, this.v});

  factory GetBooksModel.fromJson(Map<String, dynamic> json) {
    return _$GetBooksModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetBooksModelToJson(this);
}
