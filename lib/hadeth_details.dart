import 'package:app_islami/colors.dart';
import 'package:app_islami/hadeth_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName= 'hadethScreen';
  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute
        .of(context)
        ?.settings
        .arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/mainBG.png'))
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false ,
        appBar: AppBar(
          title: Text('${model.title}',
          ),

        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 50,),
              Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent,
                  border: Border.all(
                      color: AppColors.secColor,
                    width: 3
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text('${model.content}',
                        textAlign: TextAlign.right,
                        style: Theme.of(context).textTheme.bodySmall
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
