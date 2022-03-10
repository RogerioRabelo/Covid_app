import 'package:covid_app/fluxos.dart';
import 'package:covid_app/form.dart';
import 'package:covid_app/principal.dart';
import 'package:covid_app/protocolo.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';


class inicial extends StatefulWidget {
  final data;
  const inicial({
    Key? key,
    required this.data,
  }) : super(key: key);
  @override
  _inicialState createState() => _inicialState();
}

class _inicialState extends State<inicial> {
  int controlador = 0;

  final url = [
    'https://docs.google.com/forms/d/e/1FAIpQLSeHNsNkgxREP48FlbgV6QYBv2P8hjcpQpJF5-jUp9qTRoBdFQ/viewform',
    'https://docs.google.com/forms/d/e/1FAIpQLSfmQWXo8RjkBfJmolVFtciyEWVYbJDGGNRmNSm_5-_JUGW1sg/viewform',
    'https://docs.google.com/forms/d/e/1FAIpQLSeURfeoT_VenKZGLDK-kBwjw28ksUzLmvbVnFfIa4-I4TUQUQ/viewform',
    'https://docs.google.com/forms/d/e/1FAIpQLSf8KSECYco2sSI-Ob6f9xr-L6vuqufTXSnLZ39zwx3pbb6uCw/viewform',
    'https://docs.google.com/forms/d/e/1FAIpQLSfEAbWGr6l4lP9o8laZKtSGEU03FkB6Le4ce2RmslvjjKjCVQ/viewform',
    'https://docs.google.com/forms/d/e/1FAIpQLSdyRtn8HsXloS3-5On-dvsYlKvln_eCbISJl3CgguN71AjJfg/viewform',
  ];

  @override
  Widget build(BuildContext context) {
    final telas = [
      principal(),
      form(url[widget.data]),
      protocolo(),
      fluxos(),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: controlador,
        onTap: (index) => setState(() => controlador = index),
        backgroundColor: Color(0xFFfff4f4),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Pagina inicial',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important_outlined),
            label: 'Notificar casos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up_outlined),
            label: 'Protocolos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Entypo.flow_tree),
            label: 'Condutas',
          ),
        ],
      ),
      body: telas[controlador],
    );
  }
}
