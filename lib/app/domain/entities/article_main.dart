import 'package:equatable/equatable.dart';
import 'package:getx_hacker_news_api/app/data/models/article_model.dart';
import 'package:meta/meta.dart';

class ArticleMain extends Equatable {
  final String status;
  final int totalResults;
  final List<ArticleModel> articles;
  const ArticleMain({
    @required this.status,
    @required this.totalResults,
    @required this.articles,
  });

  @override
  List<Object> get props => [status, totalResults, articles];
}
