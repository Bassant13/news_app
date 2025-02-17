import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class TextWithLeftIcon extends StatelessWidget{
  IconData iconName;
  String text;
 TextWithLeftIcon({required this.iconName, required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
      child: Row(
        children: [
          Icon(
           iconName,
          color: AppColors.whiteColor,
          size: 30,
      ),
          SizedBox(width: 20,),
          Text(
            text,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}