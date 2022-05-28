import 'package:flutter/material.dart';
import 'main.dart';

class Help extends StatelessWidget{
  const Help({Key? key}) : super(key: key);
@override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime[800],
        leading: Image.asset("assets/Images/ARM logo.png"),
        title:const Text('ARM Attendance Recording''\n'' and Monitoring'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text('Help'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lime,
          onPressed: () {
            Navigator.pop(context);
          },
          child:const Text('Home'),
        ),);
  }
}