import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Spacer(),
          Image.asset('assets/images/radioo.png'),
          SizedBox(height: 50,),

          Text('إذاعة القرأن الكريم',
          textAlign: TextAlign.center,
          style: GoogleFonts.electrolize(
            fontSize: 30,
            fontWeight: FontWeight.w800
          ),),
          Spacer(),
          Row(
            children: [
              Expanded(child: Icon(Icons.skip_next,
              color: Colors.brown,
              size: 50,)),
              Expanded(child: Icon(Icons.play_arrow,
                color: Colors.brown,
                size: 50,)),
              Expanded(child: Icon(Icons.skip_next,
                color: Colors.brown,
                size: 50,)),
          ],),
          Spacer(),
        ],
      ),
    );
  }
}
