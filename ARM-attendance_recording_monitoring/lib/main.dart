import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp( 
      home:Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime[800],
        title:const Text('ARM Attendance Recording and Monitoring')
  
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              Container(
              child: const Text('Login'),
            ),
              Container(
              child: const Text('About us'),
            ),
              Container(
              child: const Text('Report Grievances'),
            ),
            ]
          ),
          Container(
            constraints: BoxConstraints.expand(
              height: 200.0,
            ),
            decoration:BoxDecoration(image:DecorationImage(
              image:NetworkImage("https://pict.edu/images/slider/home1/1.jpg"),
            fit: BoxFit.cover),
            ),),
          Container(
            decoration:const  BoxDecoration(color: Colors.red),
            child: const Text('Welcome to ARM'),),
          Container(
            decoration: const BoxDecoration(color: Colors.green),
            child:const Text('PBL project by:'),),
          ],
        
        
      )));
  }
}

