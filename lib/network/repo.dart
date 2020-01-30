

import 'package:dio/dio.dart';
import 'package:news_flutter/data/news_response.dart';

import 'api.dart';


const String theApiKey = "32e35497ecaa49dfb20d9381fd5e569c";

class Repository {
  static final Repository instance = Repository._internal();

  Dio _dioClient = Dio();
  RestClient _restClient;

  Repository._internal(){
    _restClient = RestClient(_dioClient);
  }

  Future<NewsResponce> fetchResult(int i) async =>
      await _restClient.getTasks("us", theApiKey, i);
}