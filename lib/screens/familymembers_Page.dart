import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number.dart';

class familymemberspage extends StatelessWidget {
  const familymemberspage({Key? key}) : super(key: key);
  final List<Number> numbers = const [
    Number(
        sound: 'father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'father'),
    Number(
        sound: 'daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter'),
    Number(
        sound: 'grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojīsan',
        enName: 'Grandfather'),
    Number(
        sound: 'mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother'),
    Number(
        sound: 'grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'O bāchan',
        enName: 'grandmother'),
    Number(
        sound: 'older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Ani',
        enName: 'older brother'),
    Number(
        sound: 'older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older sister'),
    Number(
        sound: 'younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'younger brother'),
    Number(
        sound: 'younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'younger sister'),
    Number(
        sound: 'son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0xFF4A322B),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Item(number: numbers[index],color: Color(0xFF5E8A3F),itemtype: 'family_members',);
          }),
    );
  }
    
  }
