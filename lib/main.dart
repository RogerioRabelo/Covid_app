import 'package:covid_app/inicial.dart';
import 'package:covid_app/selecionar.dart';
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(home: LoginPage()));

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return selecionar();
  }
}

class LoginPage extends StatefulWidget {
  
  @override
  _LoginPageState createState() {
    return _LoginPageState();
  }
}
