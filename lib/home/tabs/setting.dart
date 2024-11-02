import 'package:app_islami/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: Colors.transparent,
          border: Border.all(
            color: AppColors.secColor,
            width: 4
          )
      ),
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text('language',
               // textAlign: TextAlign.left,
               ),
             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text('theme',
                 textAlign: TextAlign.left,),
             ],
           ),
         ],
      ),

    );
  }
}
