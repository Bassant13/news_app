import 'package:flutter/material.dart';
import 'package:news_app_c13/l10n/translation.dart';
import 'package:news_app_c13/data/models/news_response/NewsArticle.dart';

import 'custom_bottom_sheet.dart';

class NewsItem extends StatelessWidget {
  final NewsArticle article;
  const NewsItem({super.key, required this.article});
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap:  (){
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
          ),
          backgroundColor: Theme.of(context).indicatorColor,
          context: context,
          useSafeArea: false,
          builder: (context){
            return CustomBottomSheet(
                imageUrl: article.urlToImage??"",
                content: article.content??"",
                title: article.title,
                source: article.source ,
                author: article.author,
                publishTime: article.publishedAt,
                description: article.description,
            );
        },
        );
        },
      child: Container(
          width: 361,
          height: 322,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Theme.of(context).indicatorColor,
            width: 2,

          ),
          color: Theme.of(context).scaffoldBackgroundColor,
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network("${article.urlToImage}"),
                  Text(
                      article.title ?? "",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "${getTranslations(context).by} ${article.author}" ,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      Expanded(
                        child: Text(
                         article.publishedAt ?? "",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
    )
);
}
}
