import 'package:flutter/material.dart';
import 'package:save_me/pages/widget/question.dart';
import 'package:save_me/pages/heat_page.dart';

import 'map_page.dart';

class CirculationPage extends StatelessWidget {
  final String brokenTitle = "Question C.";
  final String brokenQuestion = 'Check for problems with blood circulation';
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
            builder: (context) => HeatPage(),
          ),
        ),
        colorYes: colorYesQ,
        colorNo: colorNoQ,
      );
}
