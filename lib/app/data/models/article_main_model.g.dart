// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_main_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleMainModel _$ArticleMainModelFromJson(Map<String, dynamic> json) {
  return ArticleMainModel(
    status: json['status'] as String,
    totalResults: json['totalResults'] as int,
    articles: (json['articles'] as List)
        ?.map((e) =>
            e == null ? null : ArticleModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ArticleMainModelToJson(ArticleMainModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
