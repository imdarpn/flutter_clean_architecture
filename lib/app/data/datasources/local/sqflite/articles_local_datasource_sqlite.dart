import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../articles_local_datasource.dart';
import 'package:getx_hacker_news_api/app/data/models/article_model.dart';

class ArticlesLocalDatasourceSqlImpl implements ArticlesLocalDatasource {
  final _kDbFileName = 'sqflite_ex.db';
  final _kDBTableName = 'articles_table';
  Database _db;

  /// Opens a db local file. Creates the db table if it's not yet created.
  @override
  Future<bool> initDb() async {
    try {
      // get database path directory
      final dbFolder = await getDatabasesPath();
      if (!await Directory(dbFolder).exists()) {
        await Directory(dbFolder).create(recursive: true);
      }
      final dbPath = join(dbFolder, _kDbFileName);
      // open db
      _db = await openDatabase(
        dbPath,
        version: 1,
        onCreate: (db, version) async {
          await _initArticlesTable(db);
        },
      );
      // success init db
      return true;
    } on DatabaseException catch (e) {
      // failed to init db
      print(e);
      return false;
    }
  }

  /// delete the database
  @override
  Future<bool> deleteDb() async {
    try {
      final dbFolder = await getDatabasesPath();
      if (!await Directory(dbFolder).exists()) {
        await Directory(dbFolder).create(recursive: true);
      }
      final dbPath = join(dbFolder, _kDbFileName);
      await deleteDatabase(dbPath);
      _db = null;
      return true;
    } catch (_) {
      return false;
    }
  }

  // creates articles table
  Future<void> _initArticlesTable(Database db) async {
    await db.execute('''
          CREATE TABLE $_kDBTableName(
          id INTEGER PRIMARY KEY, 
          title TEXT,
          content TEXT,
          publishedAt TEXT,
          url TEXT,
          urlToImage TEXT
          )
        ''');
  }

  /// save articles
  @override
  Future<bool> insertArticles(List<ArticleModel> articles) async {
    if (articles == null || articles.isEmpty) return false;
    await deleteAllArticles();
    final validatedArticles = validateData(articles);
    try {
      for (final article in validatedArticles) {
        await _db.transaction(
          (txn) async {
            await txn.rawInsert('''
          INSERT INTO $_kDBTableName 
          (
          title,
          content,
          publishedAt,
          url,
          urlToImage
          )
          VALUES
            (
              "${article.title}",
              "${article.content}",
              "${article.publishedAt.toIso8601String()}",
              "${article.url}",
              "${article.urlToImage}"
            )''');
          },
        );
      }
      // success inserted data
      return true;
    } on DatabaseException catch (e) {
      // failed to insert data
      print(e);
      return false;
    }
  }

  /// delete all articles
  @override
  Future<bool> deleteAllArticles() async {
    try {
      await _db.rawDelete('''
        DELETE FROM $_kDBTableName
      ''');
      return true;
    } on Exception catch (e) {
      print(e);
      return false;
    }
  }

  /// get all saved articles from db
  @override
  Future<List<ArticleModel>> getArticles() async {
    final jsons = await _db.rawQuery('SELECT * FROM $_kDBTableName');
    return jsons.map((e) => ArticleModel.fromJson(e)).toList();
  }

  /// validate Articles data to evoid database exception
  List<ArticleModel> validateData(List<ArticleModel> articles) {
    final validArticles = <ArticleModel>[];
    for (final article in articles) {
      final validTitle = article.title?.replaceAll('"', "'");
      final validContent = article.content?.replaceAll('"', "'");
      final validArticle = ArticleModel(
          title: validTitle,
          content: validContent,
          publishedAt: article.publishedAt,
          url: article.url,
          urlToImage: article.urlToImage);
      validArticles.add(validArticle);
    }
    return validArticles;
  }
}
