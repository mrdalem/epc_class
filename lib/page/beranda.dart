part of 'pages.dart';

class BerandaPage extends StatefulWidget{
  @override
  _BerandaPage createState() => _BerandaPage();
}

class _BerandaPage extends State<BerandaPage> {
  var blue    = const Color(0xff1B44A6);
  var orange  = const Color(0xffD98E28);
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(color: this.blue,),
            SafeArea(child: Container(color: Color(0xffE5E5E5),)),
            ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: this.blue,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0,3),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    )
                  ),
                  padding: EdgeInsets.fromLTRB(4.0, 20, 4.0, 30),
                  child: Column(
                    children: [
                      SizedBox(height: 10.0,),
                      Image.asset('assets/images/logowhite.png', height: 28.0, width: 150.0,),
                      SizedBox(height: 20.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  width: 50,
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/user_pic.png"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                Positioned(
                                  bottom: 5,
                                  right: 0,
                                  child: Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: this.orange,
                                      borderRadius: BorderRadius.circular(15.0)
                                    ),
                                    child: Icon(
                                        Icons.settings,
                                        color: Color(0xff474646),
                                        size: 20.0,
                                    ),
                                  ),
                                )

                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Fransiskus Bala Gening", style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white
                              )),
                              Text("W14291083", style: TextStyle(
                                  fontSize: 10,
                                  height: 1.8,
                                  color: Colors.white
                              )),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ButtonTheme(
                              minWidth: 50.0,
                              height: 25.0,
                              buttonColor: Color(0xff0B3C95),
                              child: RaisedButton(
                                elevation: 4,
                                padding: EdgeInsets.fromLTRB(15,8,15,8),
                                  onPressed: () {},
                                  child: Text("Keluar", style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white
                                  )),
                                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                              ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text("KOMPETENSI", style: TextStyle(
                               color: Colors.white,
                               fontSize: 10,
                               letterSpacing: 1,
                              ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Stack(
                                  overflow: Overflow.visible,
                                  children: [
                                    Text("0", style: TextStyle(
                                      color: this.orange,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                      height: 1.5,
                                    ),
                                    ),
                                    Positioned(
                                      right: -15,
                                      bottom: 0,
                                      child: Text("/ 5", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        letterSpacing: 1,
                                      ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            decoration: BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                    color: Color.fromRGBO(255, 255, 255, 0.5),
                                    width: 1.0,
                                  ),
                                  right: BorderSide(
                                    color: Color.fromRGBO(255, 255, 255, 0.5),
                                    width: 1.0,
                                  ),
                                )
                            ),
                            child: Column(
                              children: [
                                Text("TOTAL NILAI", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  letterSpacing: 1,
                                ),
                                ),
                                Text("48", style: TextStyle(
                                  color: this.orange,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  height: 1.5,
                                ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text("PERINGKAT", style: TextStyle(
                               color: Colors.white,
                               fontSize: 10,
                               letterSpacing: 1,
                              ),
                              ),
                              Text("89", style: TextStyle(
                                color: this.orange,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                height: 1.5,
                              ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),

                ),
                Container(
                  margin: EdgeInsets.fromLTRB(4.0, 50.0, 4.0, 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 8,
                              offset: Offset(0,0),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        padding: EdgeInsets.fromLTRB(39, 26, 39, 18),
                        child: Column(
                          children: [
                            Image.asset('assets/icon/ico_1.png'),
                            Text("Kompetensi", style: TextStyle(
                                color: Color(0xff474646),
                                fontSize: 15,
                                height: 2.5
                            ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 8,
                              offset: Offset(0,0),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        padding: EdgeInsets.fromLTRB(50, 30, 50, 20),
                        child: Column(
                          children: [
                            Image.asset('assets/icon/ico_2.png'),
                            Text("Sertifikat", style: TextStyle(
                                color: Color(0xff474646),
                                fontSize: 15,
                                height: 2
                            ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(4.0, 20.0, 4.0, 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 8,
                                offset: Offset(0,0),
                              )
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        padding: EdgeInsets.fromLTRB(50, 30, 50, 20),
                        child: Column(
                          children: [
                            Image.asset('assets/icon/ico_3.png'),
                            Text("Materi", style: TextStyle(
                                color: Color(0xff474646),
                                fontSize: 15,
                                height: 2.5
                            ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 8,
                              offset: Offset(0,0),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        padding: EdgeInsets.fromLTRB(50, 30, 50, 20),
                        child: Column(
                          children: [
                            Image.asset('assets/icon/ico_4.png'),
                            Text("Akun", style: TextStyle(
                                color: Color(0xff474646),
                                fontSize: 15,
                                height: 2
                            ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(4.0, 20.0, 4.0, 25.0),
                  padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 25.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lanjutkan", style: TextStyle(
                          color: Color(0xff474646),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          height: 2
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
  
}