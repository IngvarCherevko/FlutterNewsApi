import 'package:flutter/material.dart';
import 'package:news_flutter/bloc/bloc_provider.dart';
import 'package:news_flutter/bloc/news_block.dart';
import 'package:news_flutter/data/articles.dart';

import 'article_item.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var _scrollController = ScrollController();


  @override
  void initState() {

    var bloc = BlocProvider.of<NewsBloc>(context);
    bloc.fetchResult();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        bloc.fetchResult();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("News"),
        ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {

    var bloc = BlocProvider.of<NewsBloc>(context);
    bloc.fetchResult();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: StreamBuilder<List<Articles>>(
          stream: bloc.articlesStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return _buildNewsList(snapshot.data);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }
      ),
    );
  }

  Widget _buildNewsList(List<Articles> list) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        controller: _scrollController,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
              child: ArticleItem(list[index]));
        });
  }

  }
