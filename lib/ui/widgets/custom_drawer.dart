

import 'package:flutter/material.dart';
import 'package:news_app_c13/core/app_colors.dart';
import 'package:news_app_c13/l10n/translation.dart';
import 'package:news_app_c13/providers/language_provider.dart';
import 'package:news_app_c13/providers/theme_provider.dart';
import 'package:news_app_c13/ui/screens/categories_screen.dart';
import 'package:news_app_c13/ui/widgets/custom_dropdown_button.dart';
import 'package:news_app_c13/ui/widgets/text_with_left_icon.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatefulWidget{
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  @override
  Widget build(BuildContext context) {
    List<String> themeList = [getTranslations(context).light,getTranslations(context).dark];
    List<String> languageList = ['English','العربية'];
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    return Drawer(
      backgroundColor: AppColors.blackColor,
      child: Column(
        children: [
           Container(
             color: AppColors.whiteColor,
             height: 166,
             width: double.infinity,
             child: Center(
               child: Text(
                 getTranslations(context).news_app,
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 24,
                   color: AppColors.blackColor
               ),),
             ),
           ),
          InkWell(
            onTap: (){
<<<<<<< HEAD
           //   Navigator.pushNamed(context, HomeScreen.routeName);
=======
              Navigator.pushNamed(context, CategoriesScreen.routeName);
>>>>>>> 532579f (+ bottom sheet)
            },
            child: TextWithLeftIcon(
              iconName: Icons.home_filled,
              text: getTranslations(context).go_to_home,
            ),
          ),
          Divider(color: AppColors.whiteColor, thickness: 1, endIndent: 25,indent: 24,),

          TextWithLeftIcon(
            iconName: Icons.imagesearch_roller_outlined,
            text: getTranslations(context).theme,
          ),
        CustomDropdownButton(
          list: themeList,
          selectedItem: themeProvider.currentTheme == ThemeMode.light? getTranslations(context)!.light
          : getTranslations(context)!.dark,
          onChange: (newTheme) {
            if(newTheme == 'Light' || newTheme == 'الوضع الفاتح') {
              themeProvider.changeTheme(ThemeMode.light,newTheme!);
            }else {
              themeProvider.changeTheme(ThemeMode.dark,newTheme!);
            }

          },

        ),
          SizedBox(height: 10,),

          Divider(color: AppColors.whiteColor, thickness: 1, endIndent: 25,indent: 24,),
          TextWithLeftIcon(
            iconName: Icons.language_sharp,
            text: getTranslations(context).language,
          ),
          CustomDropdownButton(
            list: languageList,
            selectedItem: languageProvider.selectedLocaleText,
            onChange: ( newLocale) {
              if(newLocale == 'English'){
                languageProvider.changeLocale('en',newLocale!);
              }else{
                languageProvider.changeLocale('ar',newLocale!);
              }
            },

          ),

        ],
      ),
    );
  }
}