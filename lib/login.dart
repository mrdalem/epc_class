import 'package:epc_class/page/pages.dart';
import 'package:epc_class/splashscreen1.dart';
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() =>  _LoginState();

}
class _LoginState extends State<Login>{
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isUsernameValid = false; // mencatat username valid atau tidak
  bool isPasswordValid = false;
  bool isSigningIn = false;

  var blue    = const Color(0xff1B44A6);
  var orange  = const Color(0xffD98E28);
  var silver  = const Color(0xffE4E4E4);

  @override
  Widget build(BuildContext context) {
    /** eksekusi semua **/
    // WillPopScope => disable back on hp
    return WillPopScope(
        onWillPop: () async => false,
        child: MaterialApp(
      title: "Splash3",
      home:Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/splash3.png',
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0.0),
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 150,), // jarak dari atas bar
                  Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Container(
                              child: Text("Selama datang!", style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),),
                            ),
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(top: 10.0, bottom: 40),
                              child: Text("Silahkan login terlebih\ndahulu.",textAlign: TextAlign.center, style: TextStyle(
                                fontSize: 14,
                              ),),
                            ),
                          ),
                          new Theme(
                              data: new ThemeData(
                                primaryColor: orange,
                                primaryColorDark: Colors.red,
                              ),
                              child: TextField(
                                controller: usernameController,
                                decoration: new InputDecoration(
                                    enabledBorder: new OutlineInputBorder(
                                      borderSide: new BorderSide(color: silver),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: orange),
                                    ),
                                    fillColor: Colors.orange,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    labelText: "Username",
                                    hintText: "Masukan Username"
                                ),
                              )
                          ),
                          SizedBox(height: 16,),
                          new Theme(
                              data: new ThemeData(
                                primaryColor: orange,
                                primaryColorDark: Colors.red,
                              ),
                              child: TextField(
                                controller: passwordController, obscureText: true,
                                decoration: new InputDecoration(
                                    enabledBorder: new OutlineInputBorder(
                                      borderSide: new BorderSide(color: silver),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: orange),
                                    ),
                                    fillColor: Colors.orange,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    labelText: "Password",
                                    hintText: "Masukan Password"
                                ),
                              )
                          ),
                          SizedBox(height: 6,),
                        ],
                      ),
                    ),
                  ),
                ],
              )
          ),
          bottomNavigationBar: Container(
              height: 56,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child:InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SplashScreenOne()),
                          );
                        },
                        child:  Container(
                          alignment: Alignment.center,
                          color: this.orange,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: Icon(Icons.arrow_back, color: Colors.white)
                              ),
                              Container(
                                child: Text("KEMBALI", style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.white
                                )),
                              ),
                            ],
                          ),
                        ),
                      )
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BerandaPage()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        color: this.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Text("MASUK", style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.white
                              )),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Icon(Icons.login, color: Colors.white)
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
          ),
        ),
      ]),
    ),
    );
  }


}