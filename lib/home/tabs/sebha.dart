import 'package:adhkar/controller/adhkar_factory.dart';
import 'package:adhkar/models/adhkar.model.dart';
import 'package:app_islami/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTab extends StatefulWidget {
   SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}
class _SebhaTabState extends State<SebhaTab> {
  int indexxTasbeh =0;
  List <String> tasbeh=[
    'سبحان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله اكبر',
    'لا حول ولا قوة الا بالله',
    'استغفر الله العظيم',
  ];
  int index =0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 70),
                    Stack(
                      alignment: AlignmentDirectional(0, -1.5),
                      children: [

                        Image.asset('assets/images/head of seb7a.png',
                          ),

                        Image.asset('assets/images/body of seb7a.png',
                          scale: 3.5,

                        ),
                      ],
                    ),
              Text('tasbehNum',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w900
                )
              ),
              ]
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 35),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: AppColors.primaryColor,
                      width: 4
                    ),
                      // color: AppColors.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(35))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$indexxTasbeh',
                        textAlign: TextAlign.center,
                        style:Theme.of(context).textTheme.bodyMedium
                            ?.copyWith(
                          color: Colors.brown
                        ),),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                GestureDetector(
                    onTap: (){
                      indexxTasbeh++;
                      if (indexxTasbeh==34){
                        indexxTasbeh=0;
                        index=(index+1)%tasbeh.length;
                      }
                      setState(() {});
                    },
                  child: Container(
                    width: 230,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white,
                            width: 4
                        ),
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(35))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('${tasbeh[index]}',
                            textAlign: TextAlign.center,
                            style:Theme.of(context).textTheme.bodySmall
                                ?.copyWith(
                                color: Colors.white
                            ),),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}
