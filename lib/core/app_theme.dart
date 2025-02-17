import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData get lightTheme {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.whiteColor,
    tabBarTheme: TabBarTheme(
      indicatorColor: AppColors.blackColor,
    ),
    indicatorColor: AppColors.blackColor,
    textTheme: TextTheme(
      titleLarge: const TextStyle(
        color: AppColors.blackColor,
      ),
      titleMedium: const TextStyle(color: AppColors.blackColor, fontSize: 20),
      titleSmall: const TextStyle(
          fontSize: 14,
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w500
      ),
      bodyLarge: const TextStyle(
          color: AppColors.blackColor,
          fontSize: 24,
          fontWeight: FontWeight.w500),

      bodyMedium: const TextStyle(color: AppColors.blackColor,fontWeight: FontWeight.bold,fontSize: 16),
      bodySmall: const TextStyle(color: AppColors.greyColor,fontWeight: FontWeight.bold,fontSize: 12),
      labelLarge: const TextStyle(color: AppColors.whiteColor, fontSize: 30),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      titleTextStyle: TextStyle(
          color: AppColors.blackColor
      ),
      iconTheme: IconThemeData(
          color: AppColors.blackColor
      ),
    ),
    cardTheme: CardTheme(
        color: AppColors.blackColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        )),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 60,vertical: 15)),
          backgroundColor: MaterialStateProperty.all(AppColors.whiteColor),
          foregroundColor: MaterialStateProperty.all(AppColors.blackColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
            ),
          )),

    ),

  );
}

///Expand darkTheme to meet your needs
ThemeData get darkTheme {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.blackColor,
    tabBarTheme: TabBarTheme(
      indicatorColor: AppColors.whiteColor,
    ),
   indicatorColor: AppColors.whiteColor,
    textTheme: TextTheme(
         titleLarge: const TextStyle(
           color: AppColors.whiteColor,
         ),
      titleMedium: const TextStyle(color: AppColors.whiteColor, fontSize: 20),
      titleSmall: const TextStyle(
          fontSize: 14,
          color: AppColors.blackColor,
          fontWeight: FontWeight.w500
      ),
      bodyLarge: const TextStyle(
          color: AppColors.whiteColor,
          fontSize: 24,
          fontWeight: FontWeight.w500),

      bodyMedium: const TextStyle(color: AppColors.whiteColor,fontWeight: FontWeight.bold,fontSize: 16),
      bodySmall: const TextStyle(color: AppColors.greyColor,fontWeight: FontWeight.bold,fontSize: 12),
      labelLarge: const TextStyle(color: AppColors.blackColor, fontSize: 30),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.blackColor,
      titleTextStyle: TextStyle(
        color: AppColors.whiteColor
      ),
      iconTheme: IconThemeData(
        color: AppColors.whiteColor
      ),
    ),
  cardTheme: CardTheme(
  color: AppColors.whiteColor,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(16),
  )),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 60,vertical: 15)),
            backgroundColor: MaterialStateProperty.all(AppColors.blackColor),
            foregroundColor: MaterialStateProperty.all(AppColors.whiteColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
              ),
            )),

    ),
  );
}
