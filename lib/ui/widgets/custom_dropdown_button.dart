import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class CustomDropdownButton extends StatelessWidget{
  List<String> list;
  String selectedItem;
  Function(String?)? onChange;
  CustomDropdownButton({required this.list,required this.selectedItem,required this.onChange});
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color: AppColors.whiteColor,
              width: 1
          )
      ),
      child: Theme(
        data: Theme.of(context).copyWith(canvasColor: AppColors.blackColor),
        child: DropdownButton<String>(
          borderRadius: BorderRadius.circular(16),

          style: TextStyle(
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w500,
            fontSize: 20,

          ),
          underline: Container(color: AppColors.blackColor,),
          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 5),

          icon: Icon(
            Icons.arrow_drop_down_rounded,
            size: 50,
            color: AppColors.whiteColor,
          ),
          value: selectedItem,
          onChanged: onChange,
          items: list.map((value) {
            return DropdownMenuItem(value: value, child: Container(child: Text(value)));
          }).toList(),

        ),
      ),
    );
  }
}