import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:save_me/pages/widget/case.dart';

class CasesWidget extends StatefulWidget {
  const CasesWidget({Key key}) : super(key: key);
  @override
  _CasesWidgetState createState() => _CasesWidgetState();
}

class _CasesWidgetState extends State<CasesWidget> {
  List<CaseWidget> bottom = <CaseWidget>[
    CaseWidget(caseCode: "T", location: "Ul. Wroclawska", distance: 300)
  ];

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD66349),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
        title: Text(
          "SAVE OTHERS",
          style: TextStyle(
              fontSize: 44,
              fontWeight: FontWeight.bold,
              fontFamily: 'NotoSerif'),
        ),
      ),
      body: CustomScrollView(
        center: centerKey,
        slivers: <Widget>[
          SliverList(
            key: centerKey,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Color(0xFFD66349),
                  height: 100,
                  child: bottom[index],
                );
              },
              childCount: bottom.length,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(
            () {
              bottom.add(CaseWidget(
                  caseCode: "T", location: "Ul. Wroclawska", distance: 300));
            },
          );
        },
        label: Text('Refresh'),
        icon: Icon(Icons.local_hospital_outlined),
        backgroundColor: Color(0xFFD66349),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
