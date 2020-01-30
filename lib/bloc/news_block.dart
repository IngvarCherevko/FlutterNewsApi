import 'package:news_flutter/data/articles.dart';
import 'package:news_flutter/network/repo.dart';
import 'package:rxdart/rxdart.dart';

import 'base_bloc.dart';

class NewsBloc extends Bloc {

  final _repo = Repository.instance;
  int page = 1;

  final _articlesStream = BehaviorSubject<List<Articles>>();


  NewsBloc() {
    _articlesStream.add([]);
  }

  Stream<List<Articles>> get articlesStream => _articlesStream.stream;


  void fetchResult() async {
    var responce = await _repo.fetchResult(page++);
    //_articlesStream.value.addAll(responce.articles);
    _articlesStream.sink.add(responce.articles);
  }


  @override
  void dispose() {
    _articlesStream.close();
  }

}