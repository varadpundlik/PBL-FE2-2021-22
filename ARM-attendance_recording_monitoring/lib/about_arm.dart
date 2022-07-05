import 'package:flutter/material.dart';
import 'main.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutARM extends StatelessWidget {
  const AboutARM({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[400],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
        ),
        title: const Text('ARM Attendance Recording' '\n' ' and Monitoring'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'About ARM' '\n',
              style: TextStyle(
                  fontSize: 30, letterSpacing: 0.5, fontFamily: 'Roboto'),
            ),
            Container(
              height: size.height * 0.25,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Images/ARM logo.png"),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Text(
                  '\t'
                  'The usual method of taking attendance is very rigid and cliche. The instructor or admin serially calls out roll numbers and then has to feed data manually in the system. Manual roll calling has many errors and inefficiencies and is prone to mistakes while being time consuming. ',
                  style: GoogleFonts.acme()),
            ),
            Text(
                'Noise in roll calling'
                '\n'
                'Students may not be attentive'
                '\n'
                'Wastage of paper'
                '\n'
                'Chances of misplacing',
                style: GoogleFonts.acme()),
            Container(
              margin: const EdgeInsets.all(10),
              child: Text(
                  'To overcome these problems, we developed this web-app portal to record and monitor attendance. This will be accompanied with auto-creation of a defaulter’s list. Attendance recording will be done with the help of Web-Room and GPS location with coordinate restriction on a classroom basis to avoid proxy attendance. Extensive thought has been given to eliminate any loopholes for smooth and reliable attendance recording and prevention of proxy/ false attendance.',
                  style: GoogleFonts.acme()),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.orange[200],
              ),
              child: Text(
                  'Its our pleasure to present to you'
                  '\n'
                  ' ARM- ATTENDANCE RECORDING AND MONITORING. '
                  '\n'
                  'A web portal to capture and track attendance using up to date frameworks and technologies like flutter, dart and firebase which will make the process more dynamic and future-proof',
                  style: GoogleFonts.acme()),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(30.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.grey,
              ),
              child: Text(
                  'Technologies used:'
                  '\n'
                  'Flutter: It is an open-source software development kit which enables smooth and easy cross-platform mobile app development. It can be used effectively for developing high quality natively compiled apps for iOS and Android. '
                  '\n'
                  'Dart: Dart is a programming language designed for client development for web and mobile apps. It is developed by Google and can also be used to build server and desktop applications.'
                  '\n'
                  ' Firebase: It is a platform developed by Google for creating mobile and web applications.',
                  style: GoogleFonts.acme()),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyApp()),
          );
        },
        child: const Text('Home'),
      ),
    );
  }
}
