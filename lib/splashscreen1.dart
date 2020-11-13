import 'package:flutter/material.dart';

class SplashScreenOne extends StatefulWidget {
  @override
  _SplashScreenOneState createState() => _SplashScreenOneState();
}

class _SplashScreenOneState extends State<SplashScreenOne> {

  @override
  Widget build(BuildContext context) {
    /** membuat element logo atas**/
    final logoatas = Container(
      transform: Matrix4.translationValues(0.0, -65.0, 0.0),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 80.0,
          child: Image.asset('assets/images/logowhite.png'),
        ),
      ),
    );

    /** membuat element text 1 , padding left,top,right,bottom**/
    final text1 = Padding(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
        child: Text("Tingkatkan Kompetensi,\nDimanapun",
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
      )),
    );

    /** membuat element text 2 **/
    final text2 = Padding(
        padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
        child: Text("Memanfaatkan waktu sembari bersantai dengan materi\nbermanfaat saat di lapangan.",
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
            height: 1.5,
            letterSpacing: 0.5,
        )),
    );

    /** double button floating **/
    final fbutton = Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.bottomLeft,
          child: RaisedButton(
            onPressed: () {},
            child: const Text('LEWATI', style: TextStyle(fontSize: 16)),
            color: const Color(0xffD98E28),
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
            elevation: 0, //shadow
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: RaisedButton(
            onPressed: () {},
            child: const Text('SELANJUTNYA', style: TextStyle(fontSize: 16)),
            color: const Color(0xff1B44A6),
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
            elevation: 0,
          ),
        ),
      ],
    );

    /** eksekusi semua **/
    return MaterialApp(
      title: "MoonLight",
      home:Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/splash1.png',
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    const Color(0xff1B44A6).withOpacity(0.3),
                    const Color(0xffD79740).withOpacity(1),
                  ],
                  stops: [
                    0.0,
                    1.0
                  ])),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
                logoatas,
                SizedBox(height: 100.0),
                text1,
                text2,
                fbutton,
              ],
            ),
          ),
        ),
      ]),
    );
  }
}