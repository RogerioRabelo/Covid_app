import 'package:flutter/material.dart';

class sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre', style: TextStyle(color: Colors.red),),
        centerTitle: true,
        backgroundColor: Color(0xFFfff4f4),
        leading: Image.asset(
          'assets/logo5.png',
          fit: BoxFit.cover,
          width: 10,
          height: 10,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 30),
          child: Column(
            children: [
              Text(
                "Este aplicativo foi desenvolvido pelo grupo de pesquisa e extensão EXTENSÃO DE APICAÇÃO TECNOlOGICA (EATECH) da Universidade Federal de São João del Rei (UFSJ).\n\n\nO EATECH UFSJ é uma iniciativa patrocinada pela Pró-Reitoria de Extensão (Proex) da UFSJ e visa promover um maior alcance dos projetos de extensão da UFSJ através do uso ou desenvolvimento de  tecnologias de informação, como, por exemplo, a elaboração e implementação de aplicativos em diferentes projetos como ferramenta de suporte na busca de interação entre UFSJ e a sociedade em geral.\n\n\nSomos um grupo multidisciplinar composto por alunos e professores da UFSJ que foi criado em agosto de 2020 motivados pela dificuldade de se realizar Extensão em meio à pandemia e ao distanciamento físico. Dessa forma,  vimos no desenvolvimento de aplicativos uma alternativa para facilitar a interação e a comunicação entre a UFSJ e o público alvo dos projetos de extensão além de promover maior produtividade e qualidade nas ações de nossos extensionistas.\n\n",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20,
                fontFamily: 'Archivo'),
              ),
              Image.asset('assets/sobre1.jpeg',
              width: 150,
              height: 150,),
              Row(
                children: [
                  Expanded(
                    child: Image.asset('assets/sobre2.jpeg'),
                  ),
                  Expanded(
                    child: Image.asset('assets/sobre3.jpeg'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
