
import 'package:covid_app/inicial.dart';
import 'package:flutter/material.dart';

class selecionar extends StatefulWidget {
  @override
  _selecionarState createState() => _selecionarState();
}

class _selecionarState extends State<selecionar> {
  String? value;
  final campus = const [
    'Campus Dom Bosco',
    'Campus Santo Antônio',
    'Campus Tancredo Neves',
    'Campus Centro Oeste Dona Lindu',
    'Campus Alto Paraopeba',
    'Campus Sete Lagoas',
  ];
  DropdownMenuItem<String> construirMenu(String campus) => DropdownMenuItem(
        value: campus,
        child: Text(campus),
      );

  int index() {
    var i=campus.indexOf(value.toString());
    return  i;
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40,10,40,0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/telaInicial.jpeg',
              width: 350,
              height: 350,
            ),
            Text(
              'Selecione o campus:',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 2)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  hint: Text('Campus'),
                  value: value,
                  isExpanded: true,
                  items: campus.map(construirMenu).toList(),
                  onChanged: (value) => setState(() => this.value=value),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed:  index() == 1 || index()==2 || index()==3 || index()==4||index() ==5 ||index()==0 ? () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => inicial(data: index(),),
                ),
              ) : ()=> null,
              child: Text('OK'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red[900], minimumSize: Size(150, 35)),
            ),
            SizedBox(height: 15,),
            Image.asset('assets/linha.jpeg',height: 2,),
            SizedBox(height: MediaQuery.of(context).size.height*0.2,),
          ],
        ),
      ),
    );
  }
}
