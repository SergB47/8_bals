import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(
      MaterialApp(
        home: BaliPage(),
      ),
    );
class BaliPage extends StatefulWidget {
  @override
  _BaliPageState createState() => _BaliPageState();
}

class _BaliPageState extends State<BaliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text(
            'Ask me anything',
            style: GoogleFonts.getFont('Jost'),
          ),
        ),
      ),
      body: Container(
        
      ),
    );
  }
}