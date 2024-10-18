import 'package:app_islami/sura_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/quran.dart' as quran;

class SuraDetailsScreen extends StatefulWidget {
   SuraDetailsScreen({super.key});
  static const String routeName = "SuraDetails" ;

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses=[];
  String basmala =quran.basmala;

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute
        .of(context)?.settings
        .arguments as SuraModel;
    if(verses.isEmpty){

      loadSuraFile(model.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/mainBG.png'))
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(
              color: Colors.brown,
              size: 30
          ),
          backgroundColor: Colors.transparent,
          title: Text('\n'+'سورة' + " " + model.name+'\n',
              style: GoogleFonts.elMessiri(fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.brown)
          ),
          centerTitle: true,
          toolbarHeight: 120,
        ),
        body:ListView.builder(itemBuilder: (context, index) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child:
              Text(verses[index],
              textAlign: TextAlign.right,
              style: GoogleFonts.amiriQuran(
                fontSize: 25,
                fontWeight: FontWeight.w600
              ),),
            ),
          );
        },itemCount: verses.length,
        )
      ),
    );
  }

  loadSuraFile(int index)async{
    String sura = await rootBundle.loadString('assets/files/${index+1}.txt');
    String suraa='${quran.basmala} \n '+sura ;
    if (index==8 || index==0){
      suraa = sura;
    }
    List<String>suraLines= suraa.split("\n");
    verses=suraLines;
    setState(() {});
  }
}
