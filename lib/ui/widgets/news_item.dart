import 'package:flutter/material.dart';
import 'package:news_app_c13/core/app_assets.dart';
<<<<<<< HEAD
import 'package:news_app_c13/data/models/news_model.dart';
import 'package:news_app_c13/l10n/translation.dart';

=======
import 'package:news_app_c13/l10n/translation.dart';

import '../../data/models/news_response/NewsArticle.dart';
>>>>>>> 532579f (+ bottom sheet)
import 'custom_bottom_sheet.dart';

class NewsItem extends StatelessWidget {
  final NewsArticle article;
  const NewsItem({super.key, required this.article});
  @override
  Widget build(BuildContext context) {
   late String articleTitle;
   late String articleDesc;
   late String articleAuth;

<<<<<<< HEAD
    if(article.id == "global-markets"){
      articleTitle =  getTranslations(context)!.global_markets_article_title;
      articleDesc =  getTranslations(context)!.global_markets_article_desc;
      articleAuth = getTranslations(context)!.global_markets_article_auth;

    }else if(article.id == "new-tech"){
      articleTitle =  getTranslations(context)!.new_tech_article_title;
      articleDesc =  getTranslations(context)!.new_tech_article_desc;
      articleAuth = getTranslations(context)!.new_tech_article_auth;

    }else if(article.id == "ai-startups"){
      articleTitle =  getTranslations(context)!.ai_startups_article_title;
      articleDesc =  getTranslations(context)!.ai_startups_article_desc;
      articleAuth = getTranslations(context)!.ai_startups_article_auth;

    }else if(article.id == "champions-league"){
      articleTitle =  getTranslations(context)!.champions_league_article_title;
      articleDesc =  getTranslations(context)!.champions_league_article_desc;
      articleAuth = getTranslations(context)!.champions_league_article_auth;

    }else if(article.id == "middle-east"){
      articleTitle =  getTranslations(context)!.middle_east_article_title;
      articleDesc =  getTranslations(context)!.middle_east_article_desc;
      articleAuth = getTranslations(context)!.middle_east_article_auth;

    }else if(article.id == "scientists-discover"){
      articleTitle =  getTranslations(context)!.scientists_discover_article_title;
      articleDesc =  getTranslations(context)!.scientists_discover_article_desc;
      articleAuth = getTranslations(context)!.scientists_discover_article_auth;

    }
=======
    // if(article.id == "global-markets"){
    //   articleTitle =  getTranslations(context)!.global_markets_article_title;
    //   articleDesc =  getTranslations(context)!.global_markets_article_desc;
    //   articleAuth = getTranslations(context)!.global_markets_article_auth;
    //
    // }else if(article.id == "new-tech"){
    //   articleTitle =  getTranslations(context)!.new_tech_article_title;
    //   articleDesc =  getTranslations(context)!.new_tech_article_desc;
    //   articleAuth = getTranslations(context)!.new_tech_article_auth;
    //
    // }else if(article.id == "ai-startups"){
    //   articleTitle =  getTranslations(context)!.ai_startups_article_title;
    //   articleDesc =  getTranslations(context)!.ai_startups_article_desc;
    //   articleAuth = getTranslations(context)!.ai_startups_article_auth;
    //
    // }else if(article.id == "champions-league"){
    //   articleTitle =  getTranslations(context)!.champions_league_article_title;
    //   articleDesc =  getTranslations(context)!.champions_league_article_desc;
    //   articleAuth = getTranslations(context)!.champions_league_article_auth;
    //
    // }else if(article.id == "middle-east"){
    //   articleTitle =  getTranslations(context)!.middle_east_article_title;
    //   articleDesc =  getTranslations(context)!.middle_east_article_desc;
    //   articleAuth = getTranslations(context)!.middle_east_article_auth;
    //
    // }else if(article.id == "scientists-discover"){
    //   articleTitle =  getTranslations(context)!.scientists_discover_article_title;
    //   articleDesc =  getTranslations(context)!.scientists_discover_article_desc;
    //   articleAuth = getTranslations(context)!.scientists_discover_article_auth;
    //
    // }
>>>>>>> 532579f (+ bottom sheet)
    return InkWell(
      onTap:  (){
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
          ),
          backgroundColor: Theme.of(context).indicatorColor,
          context: context,useSafeArea: false,
          builder: (context){
            return CustomBottomSheet(
<<<<<<< HEAD
                imageName: AppAssets.articleImg,
                title: articleDesc
=======
                imageUrl: article.urlToImage??"",
                content: article.content??"",
                title: article.title,
                source: article.source ,
                author: article.author,
                publishTime: article.publishedAt,
                description: article.description,
>>>>>>> 532579f (+ bottom sheet)
            );
          }

      );},
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
<<<<<<< HEAD
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AppAssets.articleImg),
                Text(
                    articleTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      articleAuth,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      getTranslations(context)!.minutes_ago,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
=======
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
>>>>>>> 532579f (+ bottom sheet)
            ),
          ),
        ),
    );
  }
}
