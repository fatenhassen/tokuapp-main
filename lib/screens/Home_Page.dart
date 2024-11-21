import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/colorpage.dart';
import 'package:toku/screens/familymembers_Page.dart';
import 'package:toku/screens/numbers_Page.dart';
import 'package:toku/screens/phrasespage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        title: Text('Toku'),
        backgroundColor: Color(0xFF4A322B),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
            text: 'Numbers',
            color: Color(0xFFFA9532),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return familymemberspage();
              }));
            },
            text: 'Family Members',
            color: Color(0xFF5E8A3F),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return colorpage();
              }));
            },
            text: 'Colors',
            color: Color(0xFF864CAF),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return phrasespage();
              }));
            },
            text: 'Phrases',
            color: Color(0xFF52AFD6),
          ),
        ],
      ),
    );
  }
}
