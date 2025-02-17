import 'package:dio/dio.dart';
import 'package:news_app_c13/data/models/news_response/NewsResponse.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../data/models/source_response/SourceResponse.dart';

class ApiManager{
   final _dio = Dio(
    BaseOptions(
      baseUrl:  "https://newsapi.org",
      connectTimeout: Duration(seconds: 120),

    )
  );
  ApiManager._(){
    _dio.interceptors.add(
     PrettyDioLogger(
       requestHeader: true,
       requestBody: true,
       responseBody: true,
       responseHeader: false,
       error: true,
       compact: true,
       maxWidth: 90,
       enabled: true,
     )
    );
  }
  static ApiManager? _apiManager;
  static ApiManager getInstance(){
    return _apiManager ??= ApiManager._();
  }
  Future<SourceResponse?> getNewsSources() async{
    var response = await _dio.get(
      "/v2/top-headlines/sources",
      queryParameters: {
        "apiKey":"3fca644edc9241c085811e97608664d9"
      }
    );
    var sourcesResponse = SourceResponse.fromJson(response.data);
    return sourcesResponse;
  }
   Future<NewsResponse?> getNews(String sourceId) async{
     var response = await _dio.get(
         "/v2/everything",
         queryParameters: {
           "apiKey":"3fca644edc9241c085811e97608664d9",
           "sources": sourceId
         }
     );
     var newsResponse = NewsResponse.fromJson(response.data);
     return newsResponse;
   }
}