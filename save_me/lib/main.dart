import 'package:flutter/material.dart';
import 'package:save_me/pages/welcome_page.dart';

void main() => runApp(SaveMe());

class SaveMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(home: WelcomePage());
}
