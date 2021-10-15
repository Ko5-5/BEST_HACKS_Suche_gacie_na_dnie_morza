
import 'package:flutter/material.dart';
import 'package:save_me/pages/widget/question.dart';

class AirwayPage extends StatelessWidget {
final String airwayQuestion='Check for breathing';
  @override
  Widget build(BuildContext context) => QuestionWidget(question:airwayQuestion);
}