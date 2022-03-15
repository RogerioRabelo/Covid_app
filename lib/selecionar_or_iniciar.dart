import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data/campus_settings.dart';
import 'inicial.dart';
import 'selecionar.dart';

class SelOrIni extends StatefulWidget {
  @override
  State<SelOrIni> createState() => _SelOrIniState();
}

class _SelOrIniState extends State<SelOrIni> {
  late int? indexUrl;
  late Map<String, int?> urlPref;

  readUrlCampus() {
    urlPref = context.watch<CampusSettings>().campusIndex;
    indexUrl = urlPref['indexUrl'];
  }

  salvarUrl(int i) {
    context.read<CampusSettings>().setCampusPrefs(indexUrl!);
  }

  @override
  Widget build(BuildContext context) {
    readUrlCampus();
    if (indexUrl == null) {
      return selecionar();
    } else {
      return inicial(data: indexUrl);
    }
  }
}