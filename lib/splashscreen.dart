import 'dart:async';
import 'package:epc_class/splashscreen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget{
  _Splashscreen createState() => _Splashscreen();
}

class _Splashscreen extends State<Splashscreen>{
  void iniState(){
    super.initState();
    splashscreenStart();
  }
  // mengarahkan ke halaman splas1 setelah 3 detik
  splashscreenStart() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Splashscreen1()),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x1B44A6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //icon dari dalam folder
           Image.asset(
             "assets/logoepc.png",
             width: 200.0,
             height: 100.0,
           ),

            SizedBox(height: 24.0,),
            //text
            Text("EPC CLASS",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            )
          ],
        ),
      ),
    );
  }


}