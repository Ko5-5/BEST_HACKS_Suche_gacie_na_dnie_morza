import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CaseWidget extends StatelessWidget {
  final String caseCode;
  final String location;
  final int distance;

  const CaseWidget({this.caseCode, this.location, this.distance});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                elevation: 5,
                color: Color(0xFFD66349),
                child: Text("Case Code:  ${caseCode}.",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
              Center(
                  child: Column(
                children: [
                  Text("Location:", style: TextStyle(fontSize: 16)),
                  Text(location, style: TextStyle(fontSize: 16)),
                ],
              )),
            ],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Distance: ${distance}m", style: TextStyle(fontSize: 16)),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "SAVE",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF3FB77C))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
