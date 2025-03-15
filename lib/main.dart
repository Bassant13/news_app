import 'package:flutter/material.dart';
import 'package:news_app_c13/core/app_theme.dart';
import 'package:news_app_c13/providers/language_provider.dart';
import 'package:news_app_c13/providers/theme_provider.dart';
import 'package:news_app_c13/ui/screens/categories_screen.dart';
import 'package:news_app_c13/ui/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp( MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => LanguageProvider())
      ],
  child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeProvider.currentTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(languageProvider.currentLocale),
      routes: {
        CategoriesScreen.routeName: (context) => const CategoriesScreen(),
        HomeScreen.routeName: (context) =>  HomeScreen(),


      },
      initialRoute: CategoriesScreen.routeName,
    );
  }
}
