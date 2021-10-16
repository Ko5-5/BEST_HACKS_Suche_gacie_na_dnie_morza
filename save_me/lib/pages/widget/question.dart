import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionWidget extends StatelessWidget {
  final String title;
  final String question;
  final Function onYes;
  final Function onNo;
  final MaterialStateProperty<Color> colorYes;
  final MaterialStateProperty<Color> colorNo;
  const QuestionWidget(
      {this.title,
      this.question,
      this.onYes,
      this.onNo,
      this.colorYes,
      this.colorNo});
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
            ),
            title: Text(
              title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
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
                  Text(question,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      )),
                  Divider(height: 10),
                  Spacer(flex: 8),
                  ElevatedButton(
                    onPressed: onYes,
                    child: Text('Yes'),
                    style: ButtonStyle(
                      backgroundColor: colorYes,
                      elevation: MaterialStateProperty.all(5.0),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(50)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 30)),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  ElevatedButton(
                    onPressed: onNo,
                    child: Text('No'),
                    style: ButtonStyle(
                      backgroundColor: colorNo,
                      elevation: MaterialStateProperty.all(5.0),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(50)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 30)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
