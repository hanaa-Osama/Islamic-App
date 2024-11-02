import 'package:app_islami/colors.dart';
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
  String basmala =quran.basmala;
  List<String>suraLines=[];
  int num =0;

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute
        .of(context)?.settings
        .arguments as SuraModel;

    if(suraLines.isEmpty){
      loadSuraFile(model.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/mainBG.png'))
      ),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
              color: Colors.brown,
              size: 30
          ),
          title: Text('\n'+'سورة' + " " + model.name+'\n',
          ),
          centerTitle: true,
        ),
        body:Padding(
          padding: EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.transparent,
                border: Border.all(
                    color: AppColors.secColor,
                    width: 3
                )
            ),
            child: ListView.builder(itemBuilder: (context, index) {
              return Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child:
                  Text('${suraLines[index]}(${index+1})',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall),
                ),
              );
            },itemCount: suraLines.length,
            ),
          ),
        )
      ),
    );
  }


  loadSuraFile(int index)async{
    String content = await rootBundle.loadString('assets/files/${index+1}.txt');
    String fullContent='${quran.basmala}\n'+content ;
    if (index==8 || index==0){
      fullContent = content;
    }
    suraLines= fullContent.split("\n");
    setState(() {});
  }
}
