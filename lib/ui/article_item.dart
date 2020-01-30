import 'dart:html';

import 'package:flutter/material.dart';
import 'package:news_flutter/data/articles.dart';

import 'news_detai.dart';

const String _itemImage = "https://pokrovsk.news/i/news.svg";

class ArticleItem extends StatelessWidget {
  final Articles _item;

  ArticleItem(this._item);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigateToDetail(context),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0)
        ),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.network(_item.urlToImage??_itemImage),
              ListTile(
                title: Text(_item.title??"News title", style: TextStyle(color: Colors.black, fontSize: 20.0)),
                subtitle: Text(_item.description??"subtitle"),
              ),
            ],
        ),
      ),
    );
  }

  void _navigateToDetail(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NewsDetailScreen(_item.url)));
  }
}