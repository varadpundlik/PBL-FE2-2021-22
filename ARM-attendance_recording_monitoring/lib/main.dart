import 'package:flutter/material.dart';
import 'login.dart';
import 'about_arm.dart';
import 'about_us.dart';
import 'help.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MyApp(),
    theme: ThemeData(
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[400],
         leading: Image.asset("assets/Images/ARM logo.png"),
        title: const Text('ARM Attendance Recording' '\n' ' and Monitoring'),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.tealAccent[400],
              ),
              child: const Text('Menu'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Login'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
            ),
            ListTile(
              title: const Text('About ARM'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutARM()),
                );
              },
            ),
            ListTile(
              title: const Text('About us'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutUS()),
                );
              },
            ),
            ListTile(
              title: const Text('Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Help()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: size.height * 0.5,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Images/PICT.jpg"),
                  fit: BoxFit.cover,
                  opacity: 0.6,
                ),
              ),
              child:const Align(
                child: Text(
                'Welcome to ARM',style: TextStyle(
                fontSize: 30,
                letterSpacing: 0.5,
                fontFamily: 'Roboto'
                ),
                textAlign: TextAlign.center,

              ),), // Foreground widget here
              ),
          const Text('Hello', style: TextStyle(
            color: Colors.teal,
            fontSize: 40,
            letterSpacing: 0.5,
            fontFamily: 'Roboto'
          ),),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20)
              ),
              color: Colors.tealAccent[400]
            ),
            child: const Text('PBL project by:'
                '\n'
                '10241-Shubham Dadas'
                '\n'
                '10242-Varad Pundlik'
                '\n'
                '10243-Ankit Patne'
                '\n'
                '10244-Aman Upganlawar'
                '\n'
                '10245-Vedant Barve',textAlign: TextAlign.center,),
          ),
 
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.tealAccent[400],
        child: const Text('Login'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Login()),
          );
        },
      ),
    );
  }
}
