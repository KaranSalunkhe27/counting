import 'dart:math';
import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Center(
            child: Text("Dicee"),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: Colors.blue,
        body:DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    int leftDiceNumber = Random().nextInt(6)+1;
    int rightDiceNumber = Random().nextInt(6)+1 ;
    void changeDiceNumber(){
      setState(() {
        leftDiceNumber = Random().nextInt(6)+1;
        rightDiceNumber = Random().nextInt(6)+1;
      });
    }
    return Center(
      child: Row(
        children: [
          Expanded(child:FlatButton(
            onPressed: (){
              changeDiceNumber();
            },
            child: Image(
              image: AssetImage('images/dice$leftDiceNumber.jpg'),
            ),
          )
          ),
          Expanded(child:FlatButton(
            onPressed: (){
              changeDiceNumber();
            },
            child: Image(
              image: AssetImage('images/dice$rightDiceNumber.jpg'),
            ),
          )
          ),
        ],
      ),
    );
  }
}


