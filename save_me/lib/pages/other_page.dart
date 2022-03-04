import 'package:flutter/material.dart';
import 'package:save_me/pages/widget/question.dart';

import 'map_page.dart';

class OtherPage extends StatelessWidget {
  final String otkerTitle = "Question Other";
  final String otkerQuestion = 'Is it a life threat?';
  final MaterialStateProperty<Color> colorYesQ =
      MaterialStateProperty.all<Color>(Color(0xFFD66349));
  final MaterialStateProperty<Color> colorNoQ =
      MaterialStateProperty.all<Color>(Color(0xFF3FB77C));
  @override
  Widget build(BuildContext context) => QuestionWidget(
        title: otkerTitle,
        question: otkerQuestion,
        onYes: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MapPage(),
          ),
        ),
        onNo: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MapPage(),
          ),
        ),
        colorYes: colorYesQ,
        colorNo: colorNoQ,
        filename: "assets/images/life_threat.png",
      );
}
