import 'package:flutter/material.dart';
import 'package:news_app_c13/api/api_manager.dart';

import '../../data/models/source_response/Source.dart';
import '../widgets/news_list_view.dart';

class NewsSourcesView extends StatefulWidget{
 final List<Source> sources;
  const NewsSourcesView(this.sources,{super.key});

  @override
  State<NewsSourcesView> createState() => _NewsSourcesViewState();
}
//late TabController _tabController;
var currentIndex = 0;

class _NewsSourcesViewState extends State<NewsSourcesView> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: widget.sources.length,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            tabs: buildTabs(widget.sources),
            onTap: (index) {
              // Trigger fetching news when tab is tapped
              setState(() {
                currentIndex = index;
              });
            },
      ),
         Expanded(
             child: FutureBuilder(
               future: ApiManager.getInstance().getNews(widget.sources[currentIndex].id ?? ""),
               builder: (context,snapshot) {
                 if(snapshot.connectionState == ConnectionState.waiting){
                   return Center(child: CircularProgressIndicator(color: Theme.of(context).indicatorColor),);
                 }else if(snapshot.hasError){
                   return Center(child: Text(snapshot.error.toString()),);
                 }
                 var newsList = snapshot.data?.articles ?? [];
                 return NewsListView(articles: newsList);
               },
             )
         )
            // TabBarView(
            //   controller: _tabController,
            //   children:
            //   dummySources.map((source) {
            //     return Center(child: NewsListView(articles: dummyNews,));
            //   }).toList(),
            // ),
            //

        ],
      ),
    );
  }
    List<Tab> buildTabs(List<Source> sources) {
      return sources
          .map((source) =>
          Tab(
            child: Text(
              source.name ?? "",
              style: Theme
                  .of(context)
                  .textTheme
                  .titleMedium,
            ),
          ))
          .toList();
  }
  @override
  void dispose(){
    super.dispose();
    //_tabController.dispose();
  }
}