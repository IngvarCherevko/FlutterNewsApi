import 'package:flutter/material.dart';
import 'package:news_flutter/ui/home_screen.dart';

import 'bloc/bloc_provider.dart';
import 'bloc/news_block.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        bloc: NewsBloc(),
        child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      )
    );
  }
}

