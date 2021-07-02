import 'package:flutter/material.dart';
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
              children: [
                Text('sdsd')
              ],
            )
          ],
        ),
      )
    );
  }
}
