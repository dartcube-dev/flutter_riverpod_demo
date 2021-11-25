import 'package:flutter/material.dart';
import 'package:flutter_riverpod_demo/logic/news_resposne_model.dart';

class NewsWidget extends StatelessWidget {

  final NewsResponseModel newsResponse;

  const NewsWidget({Key? key, required this.newsResponse}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (_,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: newsResponse.articles![index].urlToImage == null?const SizedBox(
              height: 80,
              width: 100,
            ):Image.network(newsResponse.articles![index].urlToImage!,height: 80,width: 100,),
            title: newsResponse.articles![index].title == null?const Text(''):Text(newsResponse.articles![index].title!,style: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontWeight: FontWeight.bold,
            ),),
            subtitle: newsResponse.articles![index].description == null?const Text(''):Text(newsResponse.articles![index].description!,style: Theme.of(context).textTheme.bodyText1),
            isThreeLine: true,
          ),
        );
      },
      itemCount: newsResponse.articles!.length,
    );
  }
}