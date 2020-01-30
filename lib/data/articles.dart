import 'package:json_annotation/json_annotation.dart';
import 'package:news_flutter/data/source.dart';


part 'articles.g.dart';

@JsonSerializable()
class Articles {
  @JsonKey(name: 'source')
  Source source;
  @JsonKey(name: 'author')
  String author;
  @JsonKey(name: 'title')
  String title;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'url')
  String url;
  @JsonKey(name: 'urlToImage')
  String urlToImage;
  @JsonKey(name: 'publishedAt')
  String publishedAt;
  @JsonKey(name: 'content')
  String content;

  Articles(this.source, this.author, this.title, this.description, this.url,
      this.urlToImage, this.publishedAt, this.content);

  factory Articles.fromJson(Map<String, dynamic> json) => _$ArticlesFromJson(json);

  Map<String, dynamic> toJson() => _$ArticlesToJson(this);


}