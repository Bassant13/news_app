import 'package:flutter/material.dart';
import 'package:news_app_c13/core/app_assets.dart';
import 'package:news_app_c13/data/models/news_model.dart';
import 'package:news_app_c13/l10n/translation.dart';

import 'custom_bottom_sheet.dart';

class NewsItem extends StatelessWidget {
  final NewsArticle article;
  const NewsItem({super.key, required this.article});
  @override
  Widget build(BuildContext context) {
   late String articleTitle;
   late String articleDesc;
   late String articleAuth;

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
                imageName: AppAssets.articleImg,
                title: articleDesc
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
            ),
          ),
        ),
    );
  }
}
