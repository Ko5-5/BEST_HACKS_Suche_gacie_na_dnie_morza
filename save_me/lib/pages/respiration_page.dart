import 'package:flutter/material.dart';
import 'package:save_me/pages/widget/question.dart';
import 'package:save_me/pages/circulation_page.dart';

import 'map_page.dart';

class RespirationPage extends StatelessWidget {
  final String brokenTitle = "Question R.";
  final String brokenQuestion = 'Check for problems with respiration';
  final MaterialStateProperty<Color> colorYesQ =
      MaterialStateProperty.all<Color>(Color(0xFFD66349));
  final MaterialStateProperty<Color> colorNoQ =
      MaterialStateProperty.all<Color>(Color(0xFF3FB77C));
  @override
  Widget build(BuildContext context) => QuestionWidget(
        title: brokenTitle,
        question: brokenQuestion,
        onYes: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MapPage(),
          ),
        ),
        onNo: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CirculationPage(),
          ),
        ),
        colorYes: colorYesQ,
        colorNo: colorNoQ,
      );
}
