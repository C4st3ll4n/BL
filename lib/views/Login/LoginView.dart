import 'package:flutter/material.dart';
import 'package:marketeasy/views/Login/Widgets/InputEmail.dart';
class Login extends StatelessWidget {
  // const Login({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.redAccent, Colors.white]
          ),
        ),
        child: ListView(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('sdsd'),
                InputEmail()
              ],
            )
          ],
        ),
      )
    );
  }
}
