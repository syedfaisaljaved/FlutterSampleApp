import 'package:flutter/material.dart';

void main(){
  runApp(application());
}

class application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Text(
            'Faisal Javed',
            style: TextStyle(
                color: Colors.blue,
                fontFamily: 'Raleway',
                fontSize: 50,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
  }
}