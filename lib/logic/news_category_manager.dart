import 'package:flutter/material.dart';

class NewsCategoryManager extends ChangeNotifier{
  int _value = 0;

  String get url => _categories[_value];

  void refresh(){
    if(_value==4){
      _value=0;
    }else{
      _value++;
    }
    notifyListeners();
  }

  final List<String> _categories = const ['sports','business','general','science','technology'];
}