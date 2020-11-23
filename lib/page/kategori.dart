part of 'pages.dart';

class KategoriPage extends StatefulWidget{
  @override
  _KategoriPage createState() => _KategoriPage();
}

class _KategoriPage extends State<KategoriPage>{
  var blue    = const Color(0xff1B44A6);
  var orange  = const Color(0xffD98E28);

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
    ));
    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        home: Scaffold(
          body: Stack(
            children: <Widget>[
              Container(color: this.orange,),
              SafeArea(child: Container(color: Color(0xffFCFCFF),)),
              Scaffold(
                bottomNavigationBar: Container(
                    height: 56,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => KompetensiPage()),
                              );
                            },
                            child: Container(
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
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                ),
                body: ListView(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 8,
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      margin: EdgeInsets.fromLTRB(15, MediaQuery.of(context).size.height / 5, 15, 10),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 10,
                            child: Container(
                                child:
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: Text("1",style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            flex: 75,
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                            child: Text("Transmisi 500kV",style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                            ),),
                                          ),
                                          SizedBox(height: ("Transmisi 500kV".length >= 24)? 0: 20,),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                                child: Text("2 materi:",style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff474646),
                                                  fontSize: 10,
                                                ),),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                child: Text("2 mandatory",style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: this.blue,
                                                  fontSize: 10,
                                                ),),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                child: Text("0 opsional",style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: this.blue,
                                                  fontSize: 10,
                                                ),),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 25,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0)),
                                  color: Colors.transparent),
                              child:  Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                    child:
                                    Text("Total Nilai",style: TextStyle(
                                        fontSize: 8,
                                        color: Colors.black
                                    ),),
                                  ),
                                  Text("48",style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 26,
                                      color: this.orange
                                  ),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container( // menu atas
                decoration: BoxDecoration(
                    color: this.orange,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0,2),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    )
                ),
                padding: EdgeInsets.fromLTRB(4.0, 20, 4.0, 10),
                height: MediaQuery.of(context).size.height / 4.8,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("1. Metode Konstruksi", style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text("Superintendent", style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}