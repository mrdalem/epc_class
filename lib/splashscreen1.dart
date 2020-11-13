import 'package:flutter/material.dart';

class Splashscreen1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Splashscreen1"),
      ),
      body: Center(
        child: Text("Tingkatkan Kompetensi,\nDimanapun"),
      ),
    );
  }
  
}