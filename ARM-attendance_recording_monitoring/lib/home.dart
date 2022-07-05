import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://attendance-recordingmonitoring.web.app/');

void _launchUrl() async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.tealAccent[400],
          leading: Image.asset("assets/Images/ARM logo.png"),
          title: const Text('ARM Attendance Recording' '\n' ' and Monitoring'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: size.height * 0.5,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage("assets/Images/PICT.jpg"),
                    fit: BoxFit.cover,
                    opacity: 0.6,
                  ),
                ),
                child: Align(
                  child: Text(
                    'Welcome to ARM',
                    style: GoogleFonts.pacifico(
                        fontSize: 30,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ), // Foreground widget here
              ),
              Text(
                'Hello',
                style: GoogleFonts.acme(fontSize: 40, letterSpacing: 0.5),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                decoration: const BoxDecoration(color: Colors.blueGrey),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('ATTENDANCE RECORDING JUST BECAME SMARTER',
                        style: GoogleFonts.acme()),
                    Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://freesvg.org/img/1550658029.png')),
                        )),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                decoration: BoxDecoration(color: Colors.orange[200]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://freesvg.org/img/leady_teacher_African03.png')),
                        )),
                    Text('AN INNOVATION FOR THE CLASSROOMS',
                        style: GoogleFonts.acme()),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                decoration: const BoxDecoration(color: Colors.grey),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('LETS TAKE A STEP TOWARDS INNOVATION',
                        style: GoogleFonts.acme()),
                    Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.iconscout.com/icon/premium/png-256-thumb/innovation-1660771-1409458.png')),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: const FloatingActionButton(
          backgroundColor: Colors.blueGrey,
          child: Text('Login'),
          onPressed: _launchUrl,
        ));
  }
}
