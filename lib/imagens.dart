import 'package:flutter/material.dart';

class imagens extends StatelessWidget {
  final List assets;
  final int index;
  imagens(
    this.assets,
    this.index,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
        ),
        title: Text(
          'Condutas',
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFfff4f4),
      ),
      body: InteractiveViewer(
        child: Center(
            child: Image.asset(
          assets[index],
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
