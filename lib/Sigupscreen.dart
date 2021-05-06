import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity/connectivity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medic/Global.dart';
import 'package:medic/myHomePage.dart';
import 'package:medic/widgets/Button.dart';
import 'package:medic/widgets/Drawer.dart';
import 'package:medic/widgets/LoginScreen.dart';
import 'package:medic/widgets/loginTextField.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  String password;

  String name;

  String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        title: Text('Sign up '),
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
            LoginTextField(
              keyboradtype: TextInputType.emailAddress,
              title: 'Name',
              placeHolder: 'Enter Your Name',
              onChangedValue: (val) {
                name = val;
              },
              obsecure: false,
              icon: Icon(Icons.person),
            ),
            SizedBox(height: 14.0),
            LoginTextField(
              keyboradtype: TextInputType.phone,
              title: 'Phone Number',
              placeHolder: 'Enter Your PhoneNumber',
              onChangedValue: (val) {
                phoneNumber = val;
              },
              obsecure: false,
              icon: Icon(
                Icons.phone,
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            buttonWidget(
              title: 'Sign Up',
              ontap: () async {
                var conectivityResult =
                    await Connectivity().checkConnectivity();
                if (conectivityResult != ConnectivityResult.mobile &&
                    conectivityResult != ConnectivityResult.wifi) {
                  showSnackBar('Check internet connectivity ');
                  return;
                }
                if (name.isNotEmpty && name.length < 4) {
                  showSnackBar('Please enter the valid name');
                  return;
                }

                if (userEmail.isNotEmpty && !userEmail.contains('@')) {
                  showSnackBar('Please enter the valid email');
                  return;
                }
                if (password.isNotEmpty && password.length < 8) {
                  showSnackBar('Please enter the valid password');
                  return;
                }
                if (phoneNumber.isNotEmpty && phoneNumber.length < 7) {
                  showSnackBar('Password donot match ');
                  return;
                }

                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) => Dialogue(
                    status: 'Registering you',
                  ),
                );
                await _register();
                Navigator.pop(context);
                addUser();
              },
            ),
            SizedBox(
              height: 14.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text(
                'Already a Member? Log in ',
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

  void _register() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;

    // ignore: unnecessary_statements
    (await _auth
        .createUserWithEmailAndPassword(
      email: userEmail,
      password: password,
    )
        .catchError((ex) {
      Exception exception = ex;
      showSnackBar(exception.toString());
    }));
  }

  void addUser() {
    FirebaseFirestore.instance.collection("Users").add({
      "name": "$name",
      "phoneNumbe": "$phoneNumber",
      "email": "$userEmail",
    }).then((_) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    });
  }
}
