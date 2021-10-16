import 'package:flutter/material.dart';
import 'package:save_me/pages/widget/question.dart';
import 'package:save_me/pages/respiration_page.dart';

import 'map_page.dart';

class AirwayPage extends StatelessWidget {
  final String airwayTitle = "Question A.";
  final String airwayQuestion = 'Check for obstacles in pacients airway';
  final MaterialStateProperty<Color> colorYesQ =
      MaterialStateProperty.all<Color>(Color(0xFFD66349));
  final MaterialStateProperty<Color> colorNoQ =
      MaterialStateProperty.all<Color>(Color(0xFF3FB77C));
  @override
  Widget build(BuildContext context) => QuestionWidget(
        title: airwayTitle,
        question: airwayQuestion,
        onYes: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MapPage(),
          ),
        ),
        onNo: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RespirationPage(),
          ),
        ),
        colorYes: colorYesQ,
        colorNo: colorNoQ,
        filename: "assets/images/oddychanie.png",
      );
}
