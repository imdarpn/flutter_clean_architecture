import 'package:getx_hacker_news_api/app/data/models/article_model.dart';
import 'package:getx_hacker_news_api/app/domain/entities/article_main.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'article_main_model.g.dart';

@JsonSerializable()
class ArticleMainModel extends ArticleMain {
  const ArticleMainModel({
    @required String status,
    @required int totalResults,
    @required List<ArticleModel> articles,
  }) : super(
      status: status,
      totalResults: totalResults,
      articles: articles);

  factory ArticleMainModel.fromJson(Map<String,dynamic> data) => _$ArticleMainModelFromJson(data);

  Map<String,dynamic> toJson() => _$ArticleMainModelToJson(this);

  // factory ArticleMainModel.fromJson(Map<String, dynamic> json) =>
  //     _$ArticleMainModelFromJson(json);
  // Map<String, dynamic> toJson() => _$ArticleMainModelToJson(this);
}
