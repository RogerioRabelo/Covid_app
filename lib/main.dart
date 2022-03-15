import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data/campus_settings.dart';
import 'selecionar_or_iniciar.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CampusSettings(),
        ),
      ],
      child: MaterialApp(
        title: 'Login',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: SelOrIni(),
      ),
    );
  }
}