import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app_c13/data/models/source_response/Source.dart';
import 'package:news_app_c13/l10n/translation.dart';
import 'package:news_app_c13/ui/screens/news_details.dart';

class CustomBottomSheet extends StatelessWidget{
  String? imageUrl;
  String? content;
  //data passed to news details screen
  String? title;
  Source? source;
  String? author;
  String? publishTime;
  String? description;
  CustomBottomSheet({required this.imageUrl,required this.content,
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
<<<<<<< HEAD
                   child: Image.asset(imageName),
=======
                   child: Image.network(imageUrl??""),
>>>>>>> 532579f (+ bottom sheet)
                   borderRadius: BorderRadius.circular(8),
                 ),
                 SizedBox(height: 15,),
                 Text(
<<<<<<< HEAD
                   title,
=======
                   title??"",
>>>>>>> 532579f (+ bottom sheet)
                   style: Theme.of(context).textTheme.titleSmall
                 ),
                 SizedBox(height: 15,),
                 ElevatedButton(
<<<<<<< HEAD
                     onPressed: (){},
=======
                     onPressed: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context) =>
                           NewsDetails(title: title,imageUrl: imageUrl, source: source,
                             author: author,publishTime: publishTime,description: description,
                           )),);
                     },
>>>>>>> 532579f (+ bottom sheet)
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