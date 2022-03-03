import 'package:carousel_slider/carousel_slider.dart';
import 'package:covid_app/sobre.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'form.dart';

class principal extends StatefulWidget {
  @override
  _principalState createState() => _principalState();
}

class _principalState extends State<principal> {
  int indexAtual = 0;
  final listaUrl = [
    'assets/P1.jpg',
    'assets/P2.jpg',
    'assets/P3.jpg',
    'assets/P4.jpg',
    'assets/P5.jpg',
    'assets/P6.jpg',
    'assets/P7.jpg',
    'assets/P8.jpg',
    'assets/P9.jpg',
    'assets/P10.jpg',
    'assets/P11.jpg',
    'assets/P12.jpg',
    'assets/P13.jpg',
    'assets/P14.jpg',
  ];
  final url =
      'https://docs.google.com/forms/d/e/1FAIpQLSfEAbWGr6l4lP9o8laZKtSGEU03FkB6Le4ce2RmslvjjKjCVQ/viewform';

  Widget criarImagem(String url) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child: Image.asset(
          url,
          fit: BoxFit.cover,
        ),
      );

  Widget indicador() => AnimatedSmoothIndicator(
        activeIndex: indexAtual,
        count: listaUrl.length,
        effect: JumpingDotEffect(
          dotWidth: 12,
          dotHeight: 12,
          activeDotColor: Colors.red,
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => sobre(),
            ),
          ),
          icon: Icon(
            Icons.info_outline,
            color: Colors.red,
          ),
        ),
        ],
        leading: Image.asset(
          'assets/logo5.png',
           width: 10,
          height: 10,
        ),
        title: Text('Covid maps UFSJ',style: TextStyle(color: Colors.red),),
        centerTitle: true,
        backgroundColor: Color(0xFFfff4f4),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 25, 25, 0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              CarouselSlider.builder(
                itemCount: listaUrl.length,
                itemBuilder: (context, index, realIndex) {
                  final imagemUrl = listaUrl[index];

                  return criarImagem(imagemUrl);
                },
                options: CarouselOptions(
                  height: 300,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  onPageChanged: (index, reason) =>
                      setState(() => indexAtual = index),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              indicador(),
              SizedBox(
                height: 32.0,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Como meio de monitorar o número de casos da Covid-19 dentro da UFSJ, torna-se viável a utilização desse aplciativo para facilitar a comunicação coordenador e sistema.',
                style: TextStyle(
                  fontSize: 17,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
