import 'package:flutter/material.dart';
import 'package:news_app_c13/core/app_colors.dart';
import 'package:news_app_c13/core/app_theme.dart';
import 'package:news_app_c13/l10n/translation.dart';
import 'package:news_app_c13/ui/widgets/custom_drawer.dart';

import '../../data/models/source_response/Source.dart';

class NewsDetails extends StatelessWidget{
  static const routeName = 'details';

  String? title;
  Source? source;
  String? author;
  String? publishTime;
  String? imageUrl;
  String? description;
  NewsDetails({ this.title,this.source,this.author,this.publishTime,this.imageUrl,this.description});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
        title: Text(
          source?.name ??"",
          style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),
        ),
        iconTheme: IconThemeData(
          color: AppColors.blackColor
        ),
        ),
          drawer: CustomDrawer(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title ?? "",
                    style: lightTheme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text(
                        '${getTranslations(context).by} ',
                        style: lightTheme.textTheme.bodySmall,
                      ),
                      Expanded(
                        child: Text(
                          author ?? "",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                            decoration: TextDecoration.underline
                          ),
                          textAlign: TextAlign.start,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text(
                        publishTime ?? "",
                        style: lightTheme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  ClipRRect(child: Image.network(imageUrl ?? ""),borderRadius: BorderRadius.circular(12)),
                  SizedBox(height: 15,),
                  Text(
                    description ?? "",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: AppColors.blackColor
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

    );
  }
}