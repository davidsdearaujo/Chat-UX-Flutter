import 'package:flutter/material.dart';

import 'messages-screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(hintColor: Color(0xff3D3D45)),
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            _buildTitle(),
            _buildContent(),
            _buildPrimaryCircle(),
            _buildSecondCircle(),
          ],
        ),
      ),
    );
  }

  Widget _buildPrimaryCircle() {
    return Positioned(
      top: 25,
      left: -15,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          color: Color(0xFF2B2B35),
          boxShadow: [
            BoxShadow(
              spreadRadius: 2.0,
              blurRadius: 10.0,
              color: Colors.black26,
            ),
          ],
        ),
        width: 70,
        height: 70,
      ),
    );
  }

  Widget _buildSecondCircle() {
    return Positioned(
      top: -50,
      right: -80,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          color: Color(0xFFEF495F),
          boxShadow: [
            BoxShadow(
              spreadRadius: 2.0,
              blurRadius: 10.0,
              color: Colors.black26,
            ),
          ],
        ),
        width: 250,
        height: 250,
      ),
    );
  }

  Widget _buildTitle() {
    return ListView(
      padding: EdgeInsets.only(
        left: 25,
        right: 25,
        top: 200,
      ),
      children: <Widget>[
        Text(
          "Meet in Bar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "by Deivão",
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }

  Widget _buildContent() {
    return Positioned(
      bottom: 50,
      left: 25,
      right: 25,
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: Column(
          children: <Widget>[
            _buildTextField("Your Email"),
            _buildTextField("Your Password"),
            _buildLoginButton(),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: "Loging in accepting the ",
                style: TextStyle(
                    fontSize: 10.5,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1),
                children: [
                  TextSpan(
                    text: "Terms and Conditions",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => MessagesScreen()),
        );
      },
      child: Container(
        width: double.infinity,
        height: 50,
        margin: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          color: Color(0xFFEF495F),
          borderRadius: BorderRadius.circular(200),
        ),
        child: Center(
          child: Text(
            "Log in",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        labelStyle: TextStyle(color: Color(0xffA9A9B5)),
        hintStyle: TextStyle(color: Color(0xffFFFFFF)),
        labelText: labelText,
      ),
    );
  }
}
