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
        primarySwatch: Colors.blue,
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
      title: new Text('Note-Taking App',
        style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0
        ),),
      image: new Image.network('https://www.pngitem.com/pimgs/m/25-256356_android-notes-app-icon-hd-png-download.png'),
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
          child:Text("Home page",textScaleFactor: 3,)
      ),
    );
  }
}
