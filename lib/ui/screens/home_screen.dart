
import 'package:flutter/material.dart';

import '../../api/api_manager.dart';
import '../../data/models/source_response/Source.dart';
import '../widgets/custom_drawer.dart';
import 'news_sources_view.dart';


class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
   final String? categoryName;
   const HomeScreen({super.key, this.categoryName});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>  {
  late String _categoryName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
           title: Text(_categoryName,style: Theme.of(context).textTheme.titleLarge,),
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


  List<Tab> buildTabs(List<Source> sources) {
    return sources
        .map((source) => Tab(
              child: Text(
                source.name?? "",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ))
        .toList();
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    var args = ModalRoute.of(context)!.settings.arguments as HomeScreen;
    _categoryName = args.categoryName!;

  }

}
