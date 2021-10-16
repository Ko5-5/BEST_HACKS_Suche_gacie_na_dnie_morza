import 'package:flutter/material.dart';
import 'package:save_me/pages/widget/searchbox.dart';

class MapPage extends StatefulWidget {
  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFD66349),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
          ),
          title: Text(
            'Search hospital',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'NotoSerif'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              SearchBox(),
              Spacer(),
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Image.asset(
                        'assets/images/hospital.png',
                        scale: 1 / 2,
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.transparent)),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFD66349)),
                        elevation: MaterialStateProperty.all(5.0),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(30)),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Ask for help",
                      style: TextStyle(
                        color: Color(0xFF4A576D),
                          fontSize: 20,
                          fontFamily: 'NotoSerif'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      );
}
