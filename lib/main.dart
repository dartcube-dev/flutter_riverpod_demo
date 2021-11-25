import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'screens/news_screen.dart';

main() {
  runApp(const ProviderScope(child: NewsApp()));
}

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NewsScreen(),
    );
  }
}

//String newsURL = "https://newsapi.org/v2/top-headlines?country=in&category=sports&apiKey=";
