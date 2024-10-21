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
    return Scaffold(
      resizeToAvoidBottomInset: false ,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(70),
            top: Radius.circular(70),
          ),
        ),
        backgroundColor: AppColors.secColor,
        title: Text('${model.title}',
            style: GoogleFonts.elMessiri(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                color: Colors.black)
        ),
        toolbarHeight: 65,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFD8B396),
                border: Border.all(color: Colors.brown,
                  width: 5
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text('${model.content}',
                      textAlign: TextAlign.right,
                      style: GoogleFonts.amiri(
                          fontSize: 28,
                          fontWeight: FontWeight.w400
                      )
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
