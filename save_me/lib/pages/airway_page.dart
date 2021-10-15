import 'package:flutter/material.dart';
import 'package:save_me/pages/widget/question.dart';

import 'map_page.dart';

class AirwayPage extends StatelessWidget {
  final String airwayQuestion = 'Check for breathing';

  @override
  Widget build(BuildContext context) => QuestionWidget(
        question: airwayQuestion,
        onYes: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AirwayPage(),
          ),
        ),
        onNo: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MapPage(),
          ),
        ),
      );
}
