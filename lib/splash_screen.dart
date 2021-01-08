import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash screen',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 50,
      navigateAfterSeconds: new SecondScreen(),
      title: new Text('FA17_BSE_060',
        style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0
        ),),
      image: new Image.network('https://i0.wp.com/www.islamicinsights.com/wp-content/uploads/hijab_silouette.jpg?resize=780%2C470&ssl=1'),
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.pink,
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Note Keeping")),
      body: Center(
          child:Text("Home page",textScaleFactor: 2,)
      ),
    );
  }
}
