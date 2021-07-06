import 'package:flutter/material.dart';
import 'package:marketeasy/views/Login/LoginPage.dart';
import 'package:marketeasy/views/Products/stores/products.store.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Login(),
    // );

    return MultiProvider(providers: [
      Provider<ProductsStore>(create:(_)=>ProductsStore(),),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    ),
    );
  }
}
