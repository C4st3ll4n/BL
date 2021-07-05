import 'package:flutter/material.dart';
import 'package:marketeasy/views/Products/ProductsPage.dart';

import 'package:marketeasy/repositories/auth_repository.dart';

class LoginInputs extends StatelessWidget {
  // const LoginInputs({Key key}) : super(key: key);
  AuthRepository _authRepository  = AuthRepository();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {

    void validateFields(String email, String password) async {
      if (await _authRepository.login(email.trim(), password.trim())) {
        // Navigator.of(context).pushAndRemoveUntil(
        //     MaterialPageRoute(builder: (BuildContext context) => ProductsPage()),
        //         (Route<dynamic> route) => false);
        print('certo');
      } else {
        print('Deu Errado!');
      }
    }

    return Container(
      width:MediaQuery.of(context).size.width * 0.9 ,
      height:MediaQuery.of(context).size.height * 0.9 ,
      padding: EdgeInsets.only(right: 20.0, top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                    color: Colors.black54
                )
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            style: TextStyle(
              color: Colors.black,
            ),
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Senha',
                labelStyle: TextStyle(
                    color: Colors.black54
                )
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width:MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.07,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFF1410EB)),
                padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 20, color: Color(0xFFFFFFFF))),
              ),
              onPressed: () {
                validateFields(emailController.text, passwordController.text);
              },
              child: const Text('Entrar'),
            ),
          ),
        ],
      ),
    );
  }


  // _textField({
  //   String hintText = "",
  //   String kType = "",
  //   String controller = "",
  // }) {
  //   return TextField(
  //     keyboardType: kType == 'email'
  //         ? TextInputType.emailAddress
  //         : TextInputType.visiblePassword,
  //     controller: controller == 'email' ? emailController : senhaController,
  //     // obscureText: kType == 'email' ? false : _isHidden,
  //     style: TextStyle(
  //       fontFamily: "WorkSansSemiBold",
  //       fontSize: 16.0,
  //       color: Colors.black,
  //     ),
  //     decoration: InputDecoration(
  //       hintText: hintText,
  //       hintStyle: TextStyle(fontFamily: "WorkSansSemiBold", fontSize: 16.0),
  //       suffix: kType == 'email'
  //           ? null
  //           : InkWell(
  //          onTap:(){},
  //       ),
  //     ),
  //   );
  // }
}