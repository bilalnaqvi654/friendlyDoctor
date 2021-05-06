import 'package:connectivity/connectivity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medic/Global.dart';
import 'package:medic/Sigupscreen.dart';
import 'package:medic/myHomePage.dart';
import 'package:medic/widgets/Button.dart';
import 'package:medic/widgets/Drawer.dart';
import 'package:medic/widgets/loginTextField.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String password;
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        key: scaffoldkey,
        title: Text('Log in '),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 24.0,
            ),
            CircleAvatar(
              backgroundImage: AssetImage("lib/assets/images/logo2.png"),
              radius: 100.0,
            ),
            SizedBox(
              height: 14.0,
            ),
            LoginTextField(
              keyboradtype: TextInputType.emailAddress,
              title: 'Email',
              placeHolder: 'Enter Your Email',
              onChangedValue: (val) {
                userEmail = val;
              },
              obsecure: false,
              icon: Icon(
                Icons.email,
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            LoginTextField(
              keyboradtype: TextInputType.text,
              title: 'Password',
              placeHolder: 'Enter Your Password',
              onChangedValue: (val) {
                password = val;
              },
              obsecure: true,
              icon: Icon(
                Icons.lock,
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            buttonWidget(
              title: 'Log in',
              ontap: () async {
                var conectivityResult =
                    await Connectivity().checkConnectivity();
                if (conectivityResult != ConnectivityResult.mobile &&
                    conectivityResult != ConnectivityResult.wifi) {
                  showSnackBar('Check internet connectivity ');
                  return;
                }

                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) => Dialogue(
                    status: 'Logging you in',
                  ),
                );

                await logIn();
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
            ),
            SizedBox(
              height: 14.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
              child: Text(
                'Not a member? Sign up ',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showSnackBar(String text) {
    final snackBar = SnackBar(
      content: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
      backgroundColor: Colors.red,
    );
    scaffoldkey.currentState.showSnackBar(snackBar);
  }

  void logIn() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;

    // ignore: unnecessary_statements
    UserCredential userCredential = await _auth
        .signInWithEmailAndPassword(
      email: userEmail,
      password: password,
    )
        .catchError((error) {
      //check error and display message
      print(error);
      String errorMessage;
      setState(() {
        errorMessage = error.toString();
      });

      showSnackBar(errorMessage);
    });
  }
}
