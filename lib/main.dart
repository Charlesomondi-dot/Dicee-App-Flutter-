import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title:  Text('Dicee'),
          backgroundColor: Colors.black87,
        ),
        body:  DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {


  DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) +1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
              changeDiceFace();
              },
              child:  Image(
                image: AssetImage('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
           Expanded(
          child: TextButton(
          onPressed: () {
            changeDiceFace();
    },
            child:  Image(image: AssetImage('images/dice$rightDiceNumber.png'),
            ),
          ),
          ), ],
      ),
    );
  }
}
