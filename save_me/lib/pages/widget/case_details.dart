import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CaseDetailsWidget extends StatelessWidget {
  final String caseCode;
  final String location;
  final int distance;

  const CaseDetailsWidget({this.caseCode, this.location, this.distance});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Text("Case Code:  ${caseCode}.",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          Text("Distance: ${distance}m", style: TextStyle(fontSize: 24)),
          Text("Location:", style: TextStyle(fontSize: 24)),
          Text(location, style: TextStyle(fontSize: 24)),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text("SAVE!"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
