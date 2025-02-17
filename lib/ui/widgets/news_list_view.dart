import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:news_app_c13/data/models/news_model.dart';
import 'package:news_app_c13/ui/widgets/news_item.dart';

=======
import 'package:news_app_c13/ui/widgets/news_item.dart';

import '../../data/models/news_response/NewsArticle.dart';

>>>>>>> 532579f (+ bottom sheet)
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
