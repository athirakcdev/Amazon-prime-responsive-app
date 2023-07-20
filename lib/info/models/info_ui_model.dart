import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class InfoUiModel {
  final String title;
  final String year;
  final String runtime;
  final String url;
  InfoUiModel({
    required this.title,
    required this.year,
    required this.runtime,
    required this.url,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'year': year,
      'runtime': runtime,
      'url':url,
    };
  }

  factory InfoUiModel.fromMap(Map<String, dynamic> map) {
    return InfoUiModel(
      title: map['title'] as String,
      year: map['year'] as String,
      runtime: map['runtime'] as String,
      url: map['url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory InfoUiModel.fromJson(String source) => InfoUiModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
