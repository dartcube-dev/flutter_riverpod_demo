import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'screens/news_screen.dart';

main(){
  runApp(const ProviderScope(child: NewsScreen()));
}















//String newsURL = "https://newsapi.org/v2/top-headlines?country=in&category=sports&apiKey=";


