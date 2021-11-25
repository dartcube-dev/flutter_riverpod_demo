import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_demo/logic/news_provider.dart';
import 'package:flutter_riverpod_demo/screens/widget/news_error_widget.dart';
import 'package:flutter_riverpod_demo/screens/widget/loading_widget.dart';
import 'package:flutter_riverpod_demo/screens/widget/news_widget.dart';

class NewsScreen extends ConsumerWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef widgetRef) {

    final refreshedValue = widgetRef.watch(refreshProvider);
    final newsResponseAsyncValue = widgetRef.watch(newsResponseProvider(refreshedValue.url));

    return newsResponseAsyncValue.map(data: (_){
      return MaterialApp(
        home: Scaffold(
          body: RefreshIndicator(
            onRefresh: () {
              refreshedValue.refresh();
              return Future.value();
            },
            child: NewsWidget(newsResponse: _.value),
          ),
        ),
      );
    }, error: (_){
      return const NewsErrorWidget();
    }, loading: (_){
      return const LoadingWidget();
    });
  }
}