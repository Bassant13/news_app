import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app_c13/l10n/translation.dart';

class CustomBottomSheet extends StatelessWidget{
  String imageName;
  String title;

  CustomBottomSheet({required this.imageName,required this.title});
  @override
  Widget build(BuildContext context) {
  return SizedBox(
    height: 413 ,
    width: 361,
    child: Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 ClipRRect(
                   child: Image.asset(imageName),
                   borderRadius: BorderRadius.circular(8),
                 ),
                 SizedBox(height: 15,),
                 Text(
                   title,
                   style: Theme.of(context).textTheme.titleSmall
                 ),
                 SizedBox(height: 15,),
                 ElevatedButton(
                     onPressed: (){},
                     child: Text(
                       getTranslations(context)!.view_full_article,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                     ),

                 ),

               ],
          ),
        ),
      ),
    ),
  );
  }
}