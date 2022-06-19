import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUS extends StatelessWidget {
  const AboutUS({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[400],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('ARM Attendance Recording' '\n' ' and Monitoring'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'About us',
            style: TextStyle(
                fontSize: 40, letterSpacing: 0.5, fontFamily: 'Roboto'),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Text(
                ' We are first year engineering students working to innovate the traditional method of taking attendance.',
                style: GoogleFonts.acme()),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.grey),
            margin: const EdgeInsets.all(10),
            child: Text(' Shubham Dadas ', style: GoogleFonts.acme()),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.orange[200]),
            margin: const EdgeInsets.all(10),
            child: Text('Varad Pundlik  ', style: GoogleFonts.acme()),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.grey),
            margin: const EdgeInsets.all(10),
            child: Text('Ankit Patne  ', style: GoogleFonts.acme()),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.orange[200]),
            margin: const EdgeInsets.all(10),
            child: Text('Aman Upganlawar  ', style: GoogleFonts.acme()),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.grey),
            margin: const EdgeInsets.all(10),
            child: Text('Vedant Barve ', style: GoogleFonts.acme()),
          ),
        ],
      ),
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
