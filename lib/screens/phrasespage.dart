import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number.dart';

class phrasespage extends StatelessWidget {
  const phrasespage({Key? key}) : super(key: key);
  final List<Number>phrases=const[
    Number(
      sound: 'dont_forget_to_subscribe.wav',
      jpName: 'Kōdokusurukotowasurenaidekudasai',
      enName: 'dont forget to subscribe' ,
    ),
    Number(
      sound: 'i_love_programming.wav',
      jpName: 'Watashwaprguramingugdaisukidesu',
      enName: 'i love programming' ,
    ),Number(
      sound: 'are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'are you coming',
    ),Number(
      sound: 'how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'how are you feeling',
    ),Number(
      sound: 'i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
    ),Number(
      sound: 'i_love_programming.wav',
      jpName:'Watashiwaprguraminggadisukidesu' ,
      enName: 'i love programming',
    ),Number(
      sound: 'programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'programming is easy',
    ),Number(
      sound: 'what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka',
      enName: 'what is your name',
    ),Number(
      sound: 'where_are_you_going.wav',
      jpName: 'Doko ni iku no',
      enName: 'where are you going',
    ),
    Number(
      sound:'yes_im_coming.wav' ,
      jpName: 'Hai, kimasu',
      enName: 'yes im coming' ,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0xFF4A322B),
      ),
      body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return phraseItem(phrase: phrases[index],color: Color(0xFF52AFD6),itemtype: 'phrases',);
          }),
    
    );
  }
}