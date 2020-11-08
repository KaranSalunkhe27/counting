import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyClass(),
    );
  }
}
class MyClass extends StatefulWidget {
  @override
  _MyClassState createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {

  int Number = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal,
        title: Text("Counting App",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Press Button to Change Number",style: TextStyle(fontSize: 20.0),)),
            SizedBox(height: 20.0,),
            Text(Number.toString(),style: TextStyle(fontWeight:FontWeight.bold,fontSize: 40.0),),
            SizedBox(height: 20.0,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundIconButton(
                  onPressed: (){
                  setState(() {
                   Number= Random().nextInt(100);
                  });
                },
                  icon:FontAwesomeIcons.plus,
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.onPressed,this.icon});
  final Function onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
        onPressed:onPressed,
    constraints: BoxConstraints.tightFor(
      width: 56.0,
      height: 56.0,
    ),
      shape: CircleBorder(),
      fillColor: Colors.teal,
    );
  }
}
