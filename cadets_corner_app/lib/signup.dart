import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup Page"),
      ),
      body: Center(
        child: Text(
          "Signup Page Content",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
