import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class protocolo extends StatelessWidget {
  const protocolo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Protocolos e orientações',
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFfff4f4),
        leading: Image.asset(
          'assets/logo5.png',
          width: 10,
          height: 10,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text('Protocolo em Minas Gerais:',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start),
              SizedBox(
                height: 8,
              ),
              TextButton(
                  child: Text(
                    'https://coronavirus.saude.mg.gov.br/protocolos',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 15,
                    ),
                  ),
                 // https://coronavirus.saude.mg.gov.br/cidadao
                  onPressed: () async {
                    var url = 'https://coronavirus.saude.mg.gov.br/protocolos';
                    if(await canLaunch(url)){
                      await launch(url);
                    }
                    else{
                      throw('Não foi possível carregar o link');
                    }
                  }),
              SizedBox(
                height: 20,
              ),
              Row(children: [
                Expanded(
                  child: Text(
                    'Lave bem as mãos com água e sabão;',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/lavar-as-maos.png',
                    fit: BoxFit.cover,
                    height: 200,
                    width: 200,
                  ),
                ),
              ]),
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/nao_toque.png',
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Não toque nos olhos,nariz ou boca;',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Cubra seu nariz e boca com o braço dobrado ou um lenço ao tossir ou espirrar;',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/lenço.png',
                      height: 200,
                      width: 200,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/medico.png',
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Procure atendimento médico se tiver febre, tosse e dificuldade para respirar;',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
