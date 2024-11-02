import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';

class RadioTab extends StatefulWidget {
  RadioTab({super.key});

  @override
  _RadioTabState createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  final AudioPlayer audioPlayer = AudioPlayer();
  int num = 1;

  @override
  void initState() {
    super.initState();
    audioPlayer.onPlayerComplete.listen((event) {
      nextSura();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Spacer(),
          Image.asset('assets/images/radioo.png'),
          SizedBox(height: 50),
          Text(
            'radio',
            textAlign: TextAlign.center,
            style: GoogleFonts.electrolize(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          Spacer(),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    playSura1();
                  },
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.brown,
                    size: 50,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    audioPlayer.pause();
                  },
                  child: Icon(
                    Icons.stop,
                    color: Colors.brown,
                    size: 50,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    nextSura();
                  },
                  child: Icon(
                    Icons.skip_next,
                    color: Colors.brown,
                    size: 50,
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }

  void nextSura() {
    if (num <= 9) {
      playSura1();
    } else if (num <= 99) {
      playSura2();
    } else if (num <= 114) {
      playSura3();
    }
    num++;
    if (num > 114) {
      num = 1;
    }
  }

  void playSura1() {
    audioPlayer.play(UrlSource('https://server12.mp3quran.net/maher/00$num.mp3'));
  }

  void playSura2() {
    audioPlayer.play(UrlSource('https://server12.mp3quran.net/maher/0$num.mp3'));
  }

  void playSura3() {
    audioPlayer.play(UrlSource('https://server12.mp3quran.net/maher/$num.mp3'));
  }
}
