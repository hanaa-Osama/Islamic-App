import 'package:app_islami/colors.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'tabs/ahadeth.dart';
import 'tabs/quran.dart';
import 'tabs/radio.dart';
import 'tabs/sebha.dart';
import 'tabs/setting.dart';


class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});
   static const String routeName = "HomeScreen" ;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentInd=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/mainBG.png'),
        Scaffold(
          appBar: AppBar(
            title: Text(
                'appBarTitle'
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentInd,
            onTap: (value){
              currentInd=value;
              setState(() {});
              },
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/moshaf_blue.png'),
              size: 35,),
              label: ''),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png'),
                size: 35,),
                  label: ''),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ahadeth.png'),
                size: 35,),
                  label: ''),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png'),
                size: 35,),
                  label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.settings,
                size: 30,),
                  label: ''),
            ],),
          body: tabs[currentInd],

        ),
      ],
    );
  }
  List<Widget> tabs =[
    QuranTab(),
    SebhaTab(),
    AhadethTab(),
    RadioTab(),
    SettingTab()
  ];
}
