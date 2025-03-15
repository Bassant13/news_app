

import 'package:flutter/material.dart';
import 'package:news_app_c13/core/app_colors.dart';
import 'package:news_app_c13/data/models/category.dart';
import 'package:news_app_c13/l10n/translation.dart';
import 'package:news_app_c13/providers/language_provider.dart';
import 'package:news_app_c13/ui/screens/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  final int index;
  const CategoryItem({super.key, required this.category, required this.index});

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    String? categoryNameWithLocale;
    if(category.id == "general"){
      categoryNameWithLocale =  getTranslations(context).general;

    }else if(category.id == "business"){
      categoryNameWithLocale =  getTranslations(context).business;
    }else if(category.id == "sports"){
      categoryNameWithLocale =  getTranslations(context).sports;
    }else if(category.id == "health"){
      categoryNameWithLocale =  getTranslations(context).health;
    }else if(category.id == "entertainment"){
      categoryNameWithLocale =  getTranslations(context).entertainment;
    }else if(category.id == "technology"){
      categoryNameWithLocale =  getTranslations(context).technology;
    }else if(category.id == "science"){
      categoryNameWithLocale =  getTranslations(context).science;
    }
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);

    // Check if the item is even or odd
    bool isEven = index % 2 == 0;
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        HomeScreen.routeName,
        arguments: HomeScreen(categoryName: categoryNameWithLocale,),
      ),
      child: Container(
        height: height * 0.25,
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Theme.of(context).indicatorColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment:
              isEven ? MainAxisAlignment.start : MainAxisAlignment.end,
          textDirection: isEven ? TextDirection.ltr : TextDirection.rtl,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
               category.imagePath,
                fit: BoxFit.cover,
                height: height * 0.25,
                width: width * 0.45,
              ),
            ),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      categoryNameWithLocale!,
                       style: Theme.of(context).textTheme.labelLarge,
                    ),
                    SizedBox(height: height * 0.04),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        width: width * 0.50,
                        height: height * 0.06,
                        decoration: BoxDecoration(
                          color: AppColors.greyColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          textDirection: index % 2 == 0 ? TextDirection.ltr : TextDirection.rtl,
                          children: [
                            Spacer(),
                            Text(
                              AppLocalizations.of(context)!.view_all,
                                style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const Spacer(),
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                              child: Icon(
                               index % 2 == 0 && languageProvider.currentLocale == 'en'
                                   || index % 2 != 0 && languageProvider.currentLocale == 'ar'
                                    ? Icons.arrow_forward_ios_rounded
                                    : Icons.arrow_back_ios_rounded,

                                 color: Theme.of(context).indicatorColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
            ), // Left-aligned text for odds
          ],
        ),
      ),
    );
  }
}
