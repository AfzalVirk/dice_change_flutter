import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.indigoAccent,
          appBar: AppBar(
            title: Center(
                child: const Text(
              'Dice',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            backgroundColor: Colors.white,
          ),
          body: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  leftDiceNum = Random().nextInt(6) + 1;

                  print('left dice num = $leftDiceNum');
                });
              },
              child: Image.asset(
                'images/dice$leftDiceNum.png',
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  rightDiceNum = Random().nextInt(6) + 1;
                  print('right dice num = $rightDiceNum');
                });
              },
              child: Image.asset(
                'images/dice$rightDiceNum.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
