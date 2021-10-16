import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:save_me/pages/widget/searchbox.dart';

import 'package:save_me/pages/widget/googlemap.dart';

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
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: GoogleMapWidget(),
                  height: 741,
                  width: MediaQuery.of(context).size.width,
                ),
                Column(
                  children: [
                    SizedBox(height: 20),
                    SearchBox(),
                  ],
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text('Ask for help'),
          icon: Icon(Icons.local_hospital_outlined),
          backgroundColor: Color(0xFFD66349),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
}
