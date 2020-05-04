import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BaliPage(),
      ),
    );


class BaliPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text(
            'Ask me anything',
            style: GoogleFonts.getFont('Hind'),
          ),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

int ballNumber = 1;

class _BallState extends State<Ball> {
  

  void changeNumber(){
    ballNumber = Random().nextInt(4) + 1;
    print(ballNumber);
  } 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: (){
            setState(() {
              changeNumber();
            });
            
          },
          child: Image.asset(
            'images/ball$ballNumber.png'
          ),
        )
      ),
    );
  }
}