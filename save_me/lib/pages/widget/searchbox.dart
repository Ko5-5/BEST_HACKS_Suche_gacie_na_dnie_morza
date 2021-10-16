
import 'package:flutter/material.dart';

class  SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xFFD66349) ),
          borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        title: Text(
          'Search for location',style:TextStyle(
            color:Color(0xFF4A576D),
                  fontSize: 20,
                  fontFamily: 'NotoSerif'),
            ),
        
        leading: Image.asset('assets/images/search.png',
        scale:3/4,
            color: Color(0xFFD66349)),
      ),
    );
  }
}