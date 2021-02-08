import 'package:dawerha_app/pages/auth_screen.dart';
import 'package:dawerha_app/pages/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // srart
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "DAWERHA",
        home: Home() ,
        //مسميات الصفحات لكي ينتقل 
        routes: {
         'login':(context) => AuthScreen(authType: AuthType.login),
         'register': (context) => AuthScreen(authType: AuthType.register),
       },
        );//End
  }
}
