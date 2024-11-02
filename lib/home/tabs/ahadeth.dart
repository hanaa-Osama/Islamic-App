import 'package:app_islami/colors.dart';
import 'package:app_islami/hadeth_details.dart';
import 'package:app_islami/hadeth_model.dart';
import 'package:app_islami/home/home_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AhadethTab extends StatefulWidget {
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth =[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadHadethFile();
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/hadith_header.png'),
          Divider(thickness: 3,
          color: AppColors.primaryColor),
          Text('ahadeth',
            style: GoogleFonts.elMessiri(
                fontSize: 30,
                fontWeight: FontWeight.w800
            ),),
          Divider(thickness: 3,
              color: AppColors.primaryColor),
          Expanded(
            child: ListView.separated(
                separatorBuilder:  (context, index) =>
                  Row(
                    children: [
                      Expanded(child: Icon(Icons.star_border_purple500_rounded,
                        color: AppColors.primaryColor,)),
                      Expanded(
                        flex: 3,
                        child: Divider(),
                      ),
                      Expanded(child: Icon(Icons.star_border_purple500_rounded,
                          color: AppColors.primaryColor))
                    ],
                  )
                ,
              itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetailsScreen.routeName,
                  arguments: allAhadeth[index]);
                },
                child: Text(allAhadeth[index].title,
                textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall),
              ) ;
            },
              itemCount: allAhadeth.length,

            ),
          )
        ],
      ),
    );
  }

  loadHadethFile(){
    rootBundle.loadString('assets/files/ahadethy.txt').then((value){
      List<String>ahadeth=value.split('#');

      for (int i=0; i<ahadeth.length ; i++) {
        String hadethOne = ahadeth[i];
        List<String>hadethLines = hadethOne.trim().split('\n');
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        List<String> content = hadethLines;
        HadethModel hadethModel = HadethModel(title, content as List<String>);
        allAhadeth.add(hadethModel);
        setState(() {});
      }

    });
  }
}
