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
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        brightness: Brightness.dark,
      ),
      home:Scaffold( 
      appBar: AppBar(
        backgroundColor: Colors.lime[800],
        leading: Image.asset("assets/Images/ARM logo.png"),
        title:const Text('ARM Attendance Recording''\n'' and Monitoring'),
        actions: <Widget>[
          IconButton(
            tooltip: 'Menu',
            onPressed:(){
            //
          }, icon:const Icon(Icons.menu),)
        ],
        
  
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/Images/PICT.jpg"),
            fit: BoxFit.cover,
            ),
          ),
            child:const Text('Welcome to arm') // Foreground widget here
          ),
          Container(
            child:const Text('PBL project by:''\n''10241-Shubham Dadas''\n''10242-Varad Pundlik''\n''10243-Ankit Patne''\n''10244-Aman Upganlawar''\n''10245-Vedant Barve'),),
          ],
          
        
        
      ),
      floatingActionButton:  FloatingActionButton(
            tooltip: 'Login',
            child:Text('Login'),
            backgroundColor: Colors.lime,
            onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()),);
          },

            ),));
  }
}
class Login extends StatelessWidget{
  const Login({Key? key}) : super(key: key);

  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),)
    ),
    );
  }
}
