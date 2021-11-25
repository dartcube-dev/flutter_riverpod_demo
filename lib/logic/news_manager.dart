import 'package:dio/dio.dart';
import 'news_resposne_model.dart';

class NewsManager{
  Future<NewsResponseModel> getMovies({String? newsCategory})async{
    Dio _dio = Dio();
    var response = await _dio.get('https://newsapi.org/v2/top-headlines?country=in&category=$newsCategory'+'&apiKey=');
    return NewsResponseModel.fromJson(response.data);
  } 
}