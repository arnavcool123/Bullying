import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  Color primaryColor = Color(0xff18203d);
  Color secondaryColor = Color(0xff232c51);
  Color logoGreen = Color(0xff25bcbb);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Column(children: <Widget>[
          Text(
            'Sign in to Anti-Bully and continue',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'openSans',
              fontSize:28,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Enter your email and password below to continue to the Anti-Bullying Platform of your School.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'openSans',
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          buildTextField('Email',Icons.account_circle),
          SizedBox(height: 30),
          buildTextField('Password',Icons.lock),
          SizedBox(height:30),
          MaterialButton(
            elevation: 0,
            minWidth: double.maxFinite,
            height: 50,
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            color: logoGreen,
            child: Text('Login',
                style: TextStyle(color: Colors.white, fontSize: 16)),
            textColor: Colors.white,
          ),
          SizedBox(height: 20),
          SizedBox(height: 100),
        ],),
      ),
    );
  }



  buildTextField(String labelText,IconData icon){
    return Container(

      decoration: BoxDecoration(
          color: secondaryColor,
          border: Border.all(color: Colors.blue)),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.white),
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          border: InputBorder.none),
      ),
    );
  }
}
