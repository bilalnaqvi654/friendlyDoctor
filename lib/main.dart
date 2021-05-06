import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medic/Sigupscreen.dart';
import 'package:medic/myHomePage.dart';
import 'package:medic/widgets/LoginScreen.dart';
import 'package:splashscreen/splashscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new SplashScreen(
          seconds: 5,
          navigateAfterSeconds: new Login(),
          title: new Text(
            'Friendly Doctor',
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white),
          ),
          image: new Image.asset("lib/assets/images/logo2.png"),
          backgroundColor: Colors.lightBlueAccent,
          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 120.0,
          onClick: () => print("Flutter Egypt"),
          loaderColor: Colors.white),
    );
  }
}

// ///////////////////////
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//
//
//
//     return MaterialApp(
//       title: 'Friendly Doctor',
//       theme: ThemeData(
//
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
//
//
//
// }
