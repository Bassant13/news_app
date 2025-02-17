import 'package:flutter/material.dart';
import 'package:news_app_c13/data/models/category.dart';
import 'package:news_app_c13/ui/widgets/category_item.dart';

import '../../l10n/translation.dart';
import '../widgets/custom_drawer.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/categories';
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  CustomDrawer(),
      appBar: AppBar(
        title:  Text(
          getTranslations(context).home_title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
               Text(
                   getTranslations(context).home_second_title,
                style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 20),
              ...CategoryModel.categories.map((e) => CategoryItem(
                  category: e, index: CategoryModel.categories.indexOf(e)))
            ],
          ),
        ),
      ),
    );
  }
}
