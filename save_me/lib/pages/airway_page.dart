import 'package:flutter/material.dart';
import 'package:save_me/pages/widget/question.dart';
import 'package:save_me/pages/broken_page.dart';

import 'map_page.dart';

class AirwayPage extends StatelessWidget {
  final String airwayTitle = "Question 2";
  final String airwayQuestion = 'Check for breathing';
  final MaterialStateProperty<Color> colorYesQ =
      MaterialStateProperty.all<Color>(Color(0xFF3FB77C));
  final MaterialStateProperty<Color> colorNoQ =
      MaterialStateProperty.all<Color>(Color(0xFFD66349));
  @override
  Widget build(BuildContext context) => QuestionWidget(
        title: airwayTitle,
        question: airwayQuestion,
        onYes: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BrokenPage(),
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
      );
}
