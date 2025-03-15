import 'package:flutter/material.dart';
import 'package:news_app_c13/data/models/source_response/Source.dart';
import 'package:news_app_c13/l10n/translation.dart';
import 'package:news_app_c13/ui/screens/news_details.dart';

class CustomBottomSheet extends StatelessWidget{
  final String? imageUrl;
  final String? content;
  //data passed to news details screen
  final String? title;
  final Source? source;
  final String? author;
  final String? publishTime;
  final String? description;
  const CustomBottomSheet({required this.imageUrl,required this.content,
    required this.title,required this.source,required this.author,required this.publishTime,required this.description,});
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
                   child: Image.network(imageUrl??""),
                   borderRadius: BorderRadius.circular(8),
                 ),
                 SizedBox(height: 15,),
                 Text(
                   title??"",
                   style: Theme.of(context).textTheme.titleSmall
                 ),
                 SizedBox(height: 15,),
                 ElevatedButton(
                     onPressed: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context) =>
                           NewsDetails(title: title,imageUrl: imageUrl, source: source,
                             author: author,publishTime: publishTime,description: description,
                           )),);
                     },
                     child: Text(
                       getTranslations(context).view_full_article,
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