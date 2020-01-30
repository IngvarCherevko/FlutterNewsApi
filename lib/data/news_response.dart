import 'package:json_annotation/json_annotation.dart';
import 'articles.dart';

part 'news_response.g.dart';

@JsonSerializable()
class NewsResponce {
  @JsonKey(name: 'status')
  String status;
  @JsonKey(name: 'totalResults')
  int totalResults;
  @JsonKey(name: 'articles')
  List<Articles> articles;

  NewsResponce(this.status, this.totalResults, this.articles);

  factory NewsResponce.fromJson(Map<String, dynamic> json) => _$NewsResponceFromJson(json);

  Map<String, dynamic> toJson() => _$NewsResponceToJson(this);


}