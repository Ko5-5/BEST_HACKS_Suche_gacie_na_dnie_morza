import 'package:flutter/material.dart';
import 'package:save_me/pages/airway_page.dart';
import 'package:save_me/pages/widget/question.dart';

import 'map_page.dart';

class BleedingPage extends StatelessWidget {
  final String bleedingQuestion = 'Check for massive bleeding';

  @override
  Widget build(BuildContext context) => QuestionWidget(
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
      );
}
