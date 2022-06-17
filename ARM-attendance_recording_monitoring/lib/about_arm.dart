import'package:flutter/material.dart';

class AboutARM extends StatelessWidget {
  const AboutARM({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.tealAccent[400],
        leading: Image.asset("assets/Images/ARM logo.png"),
        title: const Text('ARM Attendance Recording' '\n' ' and Monitoring'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
        Text('About ARM'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:  Colors.tealAccent[400],
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Home'),
      ),
    );
  }
}