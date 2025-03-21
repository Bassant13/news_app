import 'package:flutter/material.dart';
import 'package:news_app_c13/ui/widgets/news_item.dart';
import 'package:news_app_c13/data/models/news_response/NewsArticle.dart';


class NewsListView extends StatelessWidget {
  final List<NewsArticle> articles;
  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
          child: InkWell(
              child: NewsItem(article: articles[index]),
          ),
        );
      },
      itemCount: articles.length,
    );
  }
}
