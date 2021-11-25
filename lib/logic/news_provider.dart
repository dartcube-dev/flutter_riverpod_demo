import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'news_category_manager.dart';
import 'news_manager.dart';
import 'news_resposne_model.dart';

final newsManagerProvider = Provider((ref)=>NewsManager());

final refreshProvider = ChangeNotifierProvider((ref) => NewsCategoryManager());

final newsResponseProvider = FutureProvider.family<NewsResponseModel,String>((ref,category)async{
  final newsManager = ref.read(newsManagerProvider);
  return newsManager.getMovies(newsCategory: category);
});