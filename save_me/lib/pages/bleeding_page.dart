import 'package:flutter/material.dart';
import 'package:save_me/pages/airway_page.dart';
import 'package:save_me/pages/widget/question.dart';

import 'map_page.dart';

class BleedingPage extends StatelessWidget {
  final String bleedingTitle = "Question 1";
  final String bleedingQuestion = 'Check for massive bleeding';
  final MaterialStateProperty<Color> colorYesQ =
      MaterialStateProperty.all<Color>(Color(0xFFD66349));
  final MaterialStateProperty<Color> colorNoQ =
      MaterialStateProperty.all<Color>(Color(0xFF3FB77C));
  @override
  Widget build(BuildContext context) => QuestionWidget(
        title: bleedingTitle,
        question: bleedingQuestion,
        onYes: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MapPage(),
          ),
        ),
        onNo: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AirwayPage(),
          ),
        ),
        colorYes: colorYesQ,
        colorNo: colorNoQ,
      );
}
