
import 'package:news_flutter/data/news_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'api.g.dart';

const String baseUrl = 'https://newsapi.org/v2/';


@RestApi(baseUrl: baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("top-headlines")
  Future<NewsResponce> getTasks(
      @Query('country') String country,
      @Query('apiKey') String theApiKey,
      @Query('page') int page
      );
}