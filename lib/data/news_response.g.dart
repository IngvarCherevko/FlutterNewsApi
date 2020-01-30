// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsResponce _$NewsResponceFromJson(Map<String, dynamic> json) {
  return NewsResponce(
      json['status'] as String,
      json['totalResults'] as int,
      (json['articles'] as List)
          ?.map((e) =>
              e == null ? null : Articles.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$NewsResponceToJson(NewsResponce instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles
    };
