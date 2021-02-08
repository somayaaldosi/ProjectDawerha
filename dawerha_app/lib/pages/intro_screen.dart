import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(),
              Image.asset('assets/imges/logo.jpeg'),
              SizedBox(
                height: 60,
                width: double.infinity,
                //create button=
                child: RaisedButton(
                    color: Colors.lightGreen[200],
                    onPressed: () {
                      //ينتقل الى صفحة تسجيل الدخول
                      Navigator.of(context).pushNamed('login');
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23)),
                    child: Text("البدء ",
                    style: TextStyle(color: Colors.lightGreenAccent[900], fontSize: 25),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
