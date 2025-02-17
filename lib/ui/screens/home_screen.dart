import 'dart:math';

import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:news_app_c13/core/app_assets.dart';
import 'package:news_app_c13/data/dummy_data.dart';
import 'package:news_app_c13/data/models/category.dart';
import 'package:news_app_c13/data/models/news_model.dart';
import 'package:news_app_c13/data/models/news_source.dart';
import 'package:news_app_c13/l10n/translation.dart';
import 'package:news_app_c13/ui/widgets/custom_drawer.dart';
import 'package:news_app_c13/ui/widgets/news_list_view.dart';

import '../widgets/custom_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
=======
import 'package:news_app_c13/api/api_manager.dart';
import 'package:news_app_c13/l10n/translation.dart';
import 'package:news_app_c13/ui/screens/news_sources_view.dart';
import 'package:news_app_c13/ui/widgets/custom_drawer.dart';
import 'package:news_app_c13/ui/widgets/news_list_view.dart';

import '../../data/models/news_response/NewsArticle.dart';
import '../widgets/custom_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home';
>>>>>>> 532579f (+ bottom sheet)
  final String? categoryName;
  const HomeScreen({super.key, this.categoryName});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
    late String _categoryName;

  @override
  Widget build(BuildContext context) {
    // List<String> tabItems = [
    //   getTranslations(context)!.bbc_news,
    //   getTranslations(context)!.cnn,
    //   getTranslations(context)!.fox_news,
    //   getTranslations(context)!.al_jazeera,
    //   getTranslations(context)!.reuters,
    //   getTranslations(context)!.tech_crunch,
    //   getTranslations(context)!.wired,
    //   getTranslations(context)!.espn,
    //   getTranslations(context)!.bleacher_report,
    //   getTranslations(context)!.national_geographic
    // ];
    // List<Tab> tabs = [];
    // for(int i=0; i<10; i++){
    //   tabs.add(
    //     Tab(child: Text(tabItems[i], style: Theme.of(context).textTheme.titleMedium,),),
    //   );
    // }

    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
           title: Text( _categoryName,style: Theme.of(context).textTheme.titleLarge,),
           centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                },
                icon: const Icon(
                  Icons.search,
                  size: 30,
                ))
          ],
          // bottom: TabBar(
          //   controller: _tabController,
          //   isScrollable: true,
          //   tabs: buildTabs(),
          //
          //   onTap: (index) {
          //     // Trigger fetching news when tab is tapped
          //
          //   },
          // ),
        ),
        drawer: CustomDrawer(),
        body: FutureBuilder(
            future: ApiManager.getInstance().getNewsSources(),
            builder: (context,snapshot){
              if(snapshot.connectionState == ConnectionState.waiting){
                return Center(child: CircularProgressIndicator(color: Theme.of(context).indicatorColor,),);
              }else if(snapshot.hasError){
                return Center(child: Text(snapshot.error.toString()),);
              }
              var sources = snapshot.data?.sources;
              return NewsSourcesView(sources ?? []);
            }
        )
      ),
    );
  }

<<<<<<< HEAD
  // List<Tab> buildTabs() {
  //   return dummySources
  //       .map((source) => Tab(
  //             child: Text(
  //               source.name,
=======
  // List<Tab> buildTabs(List<Source> sources) {
  //   return sources
  //       .map((source) => Tab(
  //             child: Text(
  //               source.name?? "",
>>>>>>> 532579f (+ bottom sheet)
  //               style: Theme.of(context).textTheme.titleMedium,
  //             ),
  //           ))
  //       .toList();
  // }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    
    var args = ModalRoute.of(context)!.settings.arguments as HomeScreen;
    _categoryName = args.categoryName!;

  }

<<<<<<< HEAD
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<NewsArticle> fetchNewsForSource({int sourceIndex = 0}) {
    int randomCount = Random().nextInt(dummyNews.length) + 1;
    return dummyNews.sublist(0, randomCount);
  }

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: dummySources.length, vsync: this);

    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        _fetchNewsForCurrentTab();
        setState(() {
        });
      }
    });

    _fetchNewsForCurrentTab();
    setState(() {
    });
  }

  void _fetchNewsForCurrentTab() {
    setState(() {
      fetchNewsForSource(sourceIndex: _tabController.index);
    });
  }
=======
>>>>>>> 532579f (+ bottom sheet)
}
