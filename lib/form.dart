import 'package:covid_app/selecionar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class form extends StatelessWidget {
  final String url;
  const form(this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFfff4f4),
        title: Text(
          'Formulário',
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        leading: Image.asset(
          'assets/logo5.png',
          width: 10,
          height: 10,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
              AlertDialog(
      title: Text(
        'ATENÇÃO',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.red),
      ),
      content: Text(
        'Esse formulário não é destinado a alunos',
        textAlign: TextAlign.center,
      ),
      actions: [
        Center(
            child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text('Ok')))
      ],
    ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => selecionar(),
                    ),
                  ),
                  child: Text(
                    'alterar campus',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
                child: WebView(
                  gestureRecognizers: Set()
                    ..add(Factory<OneSequenceGestureRecognizer>(
                        () => EagerGestureRecognizer())),
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: url,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
