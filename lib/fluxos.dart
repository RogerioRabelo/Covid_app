import 'package:covid_app/imagens.dart';
import 'package:covid_app/protocolo.dart';
import 'package:flutter/material.dart';

class fluxos extends StatefulWidget {
  @override
  State<fluxos> createState() => _fluxosState();
}

class _fluxosState extends State<fluxos> {
  final textos = [
    'Condutas gerais:',
    'Pessoa sintómatica com diagnóstico positivo para covid-19:',
    'Pessoa assintómatica com diagnóstico positivo para covid-19:',
    'Pessoa assintómatica que teve contato próximo desprotegido com casos suspeitos ou confrimados de covid-19:',
  ];

  final assets = [
    'assets/F1.jpg',
    'assets/F2.png',
    'assets/F3.png',
    'assets/F4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset(
            'assets/logo5.png',
            width: 10,
            height: 10,
          ),
          title: Text(
            'Condutas',
            style: TextStyle(color: Colors.red),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFFfff4f4),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/linha.jpeg',
                  height: 2,
                  width: 300,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => imagens(assets, 0))),
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        height: MediaQuery.of(context).size.width * 0.45,
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Image.asset(
                          'assets/Fluxo1.jpeg',
                          fit: BoxFit.fill,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFc9d1e4),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.red, width: 2),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => imagens(assets, 1))),
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        height: MediaQuery.of(context).size.width * 0.45,
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Image.asset(
                          'assets/Fluxo2.jpeg',
                          fit: BoxFit.fill,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFf8caca),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.red, width: 2),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => imagens(assets, 2))),
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        height: MediaQuery.of(context).size.width * 0.45,
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Image.asset(
                          'assets/Fluxo3.jpeg',
                          fit: BoxFit.fill,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFbad7b8),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.red, width: 2),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => imagens(assets, 3))),
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        height: MediaQuery.of(context).size.width * 0.45,
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Image.asset(
                          'assets/Fluxo4.jpeg',
                          fit: BoxFit.cover,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFf8f4ce),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.red, width: 2),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/linha.jpeg',
                  height: 7,
                  width: 315,
                ),
              ],
            ),
          ),
        ));
  }
}
