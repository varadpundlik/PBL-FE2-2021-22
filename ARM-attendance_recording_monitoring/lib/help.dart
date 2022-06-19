import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[400],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('ARM Attendance Recording' '\n' ' and Monitoring'),
      ),
      body: SingleChildScrollView(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Help',
              style: TextStyle(
                  fontSize: 40, letterSpacing: 0.5, fontFamily: 'Roboto')),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(30.0),
            child: Text(
                '\n'
                'ARM is a smart, reliable and user-friendly platform, designed to improve attendance recording. It consists of the following steps:',
                style: GoogleFonts.acme()),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
                width: size.width * 0.8,
                padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey),
                margin: const EdgeInsets.all(10),
                child: Text('1.Click On Login', style: GoogleFonts.acme())),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: size.width * 0.8,
              padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey),
              margin: const EdgeInsets.all(10),
              child: Text('2.Enter Your Name and Roll No',
                  style: GoogleFonts.acme()),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: size.width * 0.8,
              padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey),
              margin: const EdgeInsets.all(10),
              child: Text(
                  '3.Enter the roomcode  provided by the Teacher and make sure that you are at correct location.',
                  style: GoogleFonts.acme()),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: size.width * 0.8,
              padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey),
              margin: const EdgeInsets.all(10),
              child: Text('4.Click on enter and allow access  to  location',
                  style: GoogleFonts.acme()),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: size.width * 0.8,
              padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey),
              margin: const EdgeInsets.all(10),
              child: Text(
                  '5.Be in the room till teacher download the attendance.',
                  style: GoogleFonts.acme()),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: size.width * 0.8,
              padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey),
              margin: const EdgeInsets.all(10),
              child: Text('6.Exit the room.', style: GoogleFonts.acme()),
            ),
          ),
          Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 20.0),
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: Colors.tealAccent[400]),
                child: const Text(
                  'PBL project by: B2-Group4_21-22',
                  textAlign: TextAlign.center,
                ),
              ),
        ],
      ),),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Home'),
      ),
    );
  }
}
