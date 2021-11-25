import 'package:flutter/material.dart';
import 'package:flutter_riverpod_demo/logic/news_resposne_model.dart';

class NewsWidget extends StatelessWidget {

  final NewsResponseModel newsResponse;

  const NewsWidget({Key? key, required this.newsResponse}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_,index){
        return ListTile(
          title: Text(newsResponse.articles![index].title!),
        );
      },
      itemCount: newsResponse.articles!.length,
    );
  }
}