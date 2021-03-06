import 'dart:async';

import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:webview_flutter/webview_flutter.dart';


class NewsDetailScreen extends StatelessWidget  {
  final String selectedUrl;
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();


  NewsDetailScreen(this.selectedUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(selectedUrl),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                Share.share(selectedUrl);
                // do something
              },
            )
          ],
        ),
        body: WebView(
          initialUrl: selectedUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ));
  }
}
