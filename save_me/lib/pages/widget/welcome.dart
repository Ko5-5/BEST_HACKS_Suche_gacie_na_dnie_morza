import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomeWidget extends StatelessWidget {
  final Function onSave;
  final Function onHelp;
  const WelcomeWidget({this.onSave, this.onHelp});
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFD66349),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
          ),
          title: Text(
            "SAVE ME!",
            style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.bold,
                fontFamily: 'NotoSerif'),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.local_hospital),
                    iconSize: 260,
                    color: Color(0xFFD66349),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    /*style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.transparent)),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFFD66349)),
                      elevation: MaterialStateProperty.all(5.0),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(50)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 36)),
                    ),*/
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('SAVE OTHERS'),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.transparent)),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3FB77C)),
                      elevation: MaterialStateProperty.all(5.0),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(40)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 18)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
