import 'package:adhkar/controller/adhkar_factory.dart';
import 'package:adhkar/models/adhkar.model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                    Image.asset('assets/images/head of seb7a.png',
                      width: 70,
                      height: 100,),
                    Image.asset('assets/images/body of seb7a.png',
                      width: 250,
                      height: 250,),
              Text('عدد التسبيحات',
                textAlign: TextAlign.center,
                style: GoogleFonts.electrolize(
                    fontSize: 30,
                    fontWeight: FontWeight.w800
                ),),
              ]
          ),
          Spacer(),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.all(Radius.circular(35))
            ),
            child: Text('1',
              style: TextStyle(
                  color: Colors.white
              ),),
          ),
          Spacer(),
          Spacer(),
          Spacer(),
        ],
      ),
    );

  }
  // void _getAllAdhkarId() {
  //   final get_adhkar = AdhkarFactory.getAllAdhkarId();
  //   print(get_adhkar);
  // }
  //
  // void _getASingleAdhkar() {
  //   Adhkar adhkar = AdhkarFactory.getAdhkar(adhkarId: "c1");
  //   print(adhkar.title);
  // }
  //
  // void _getAllAdhkar() {
  //   List<Adhkar> adhkars = AdhkarFactory.getAdhkar();
  //   print(adhkars.length);
  // }
}
