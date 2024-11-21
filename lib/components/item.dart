import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';
import 'package:toku/models/Phrase.dart';


class Item extends StatelessWidget {
  const Item({Key? key, required this.number,required this.color, required this.itemtype}) : super(key: key);
  final Number number;
  final Color color ;
  final String itemtype ;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(color: Color(0xFFFFF3DC), child: Image.asset(number.image!)),
          Padding(
            
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(number.enName,
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                try {
                  AudioCache player =
                      AudioCache(prefix: 'assets/sounds/$itemtype/');
                  player.play(number.sound);
                } catch (e) {
                  print(e);
                }
                
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              )),
        ],
      ),
    );
  }
}


class phraseItem extends StatelessWidget {
  const phraseItem({Key? key, required this.phrase,required this.color, required this.itemtype}) : super(key: key);
  final Number phrase;
  final Color color ;
  final String itemtype ;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Padding(
            
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(phrase.enName,
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                try {
                  AudioCache player =
                      AudioCache(prefix: 'assets/sounds/$itemtype/');
                  player.play(phrase.sound);
                } catch (e) {
                  print(e);
                }
                
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              )),
        ],
      ),
    );
  }
}
