import 'dart:ui';
import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final WordPair wordpair = WordPair.random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("this is amazing!"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child:RandomWords(),
      ),
    ));
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random(); // NEW
    return Text(wordPair.asPascalCase);
  }
}
