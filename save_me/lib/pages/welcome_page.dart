import 'package:flutter/material.dart';
import 'package:save_me/pages/widget/welcome.dart';
import 'package:save_me/pages/bleeding_page.dart';
import 'package:save_me/pages/cases_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => WelcomeWidget(
        onSave: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BleedingPage(),
          ),
        ),
        onHelp: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CasesPage(),
          ),
        ),
      );
}
