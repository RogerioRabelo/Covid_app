import 'package:flutter/material.dart';

class sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre', style: TextStyle(color: Colors.red),),
        centerTitle: true,
        backgroundColor: Color(0xFFfff4f4),
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 30),
        child: Column(
          children: [
            Text(
              " UFSJ COVID  Maps  - Aplicativo para comunicação de protocolos, informações e notificação de casos de COVID entre a comunidade da UFSJ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,
              fontFamily: 'Archivo'),
            ),
           SizedBox(height: 20,),
            
            Container(
              width: MediaQuery.of(context).size.width,
              height: 130,
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset('assets/sobre2.jpeg'),
                  ),
                  Expanded(
                    child: Image.asset('assets/sobre1.jpeg'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
