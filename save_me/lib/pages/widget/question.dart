import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final String question;
  final Function onYes;
  final Function onNo;
  const QuestionWidget({this.question, this.onYes, this.onNo});
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
            ),
            title: Text(
              'Step 1',
              style: TextStyle(
                fontSize: 24,
              ),
            )),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Spacer(),
                  Text(question),
                  Divider(height: 10),
                  Spacer(flex: 8),
                  ElevatedButton(
                    onPressed: onYes,
                    child: Text('Yes'),
                  ),
                  TextButton(
                    onPressed: onNo,
                    child: Text('No'),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
