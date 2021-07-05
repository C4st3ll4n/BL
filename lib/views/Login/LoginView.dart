import 'package:flutter/material.dart';
import 'package:marketeasy/views/Login/Widgets/LoginInputs.dart';

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
        child:
        // ListView(
        //   children: [
        //     Column(
        //       // mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Text('sdsd'),
        //         InputEmail()
        //       ],
        //     )
        //   ],
        // ),
       SafeArea(
      child: Center(
      child: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 50.0, left: 20.0, right: 20.0),
            // child: SvgPicture.asset('assets/images/logoLogin.svg'),
          ),
          Container(
            width: displaySize(context).width * 0.9,
            height: displaySize(context).height * 0.50,
            child: Card(
              elevation: 15.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                ),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    // Text(
                    //   "Login",
                    //   style: TextStyle(
                    //     fontSize: 30,
                    //     color: Color(0xFF000000),
                    //     fontStyle: FontStyle.normal,
                    //   ),
                    // ),
                    Expanded(child: LoginInputs()),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    ),
    )
      )
    );
  }
}

Size displaySize(context) {
  return MediaQuery.of(context).size;
}