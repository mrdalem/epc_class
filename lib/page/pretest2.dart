part of 'pages.dart';

class PreTestPage2 extends StatefulWidget{
  @override
  _PreTestPage2State createState() => _PreTestPage2State();
}

class _PreTestPage2State extends State<PreTestPage2>{
  var blue    = const Color(0xff1B44A6);
  var orange  = const Color(0xffD98E28);
  bool isSelected = false;
  //random list
  Random random = new Random();
  List list = [];
  // list jwban
  List listJwb = [
    'A. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
    'B. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
    'C. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
    'D. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
  ];

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
    ));
    var jawaban = listJwb.asMap().values.toList()..shuffle();

    return WillPopScope(
      onWillPop: () async => false,
      child: MaterialApp(
        home: Scaffold(
          appBar:
          PreferredSize(
            preferredSize: Size(double.infinity, 100),
            child: Container(
              color: this.blue,
              width: MediaQuery.of(context).size.width,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.navigate_before,size: 40,color: Colors.transparent,),
                            Text("04:23", textAlign: TextAlign.center , style: TextStyle(
                                fontSize: 22,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),
                            PopupMenuButton(
                              itemBuilder: (BuildContext context) {
                                return [
                                  PopupMenuItem(
                                      child: InkWell(
                                        onTap: () {
                                          clicked2(context, "Diklik");
                                        },
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.close, color: Colors.black,
                                            ),
                                            Text("Close")
                                          ],
                                        ),
                                      )),
                                ];
                              },
                              color: Colors.white,
                              icon: Icon(
                                Icons.menu, color: Colors.white,
                              ),
                            )
                          ]
                      ),
                    ),
                    Container(
                      child: Text("Waktu tersisa", style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),),
                    )
                  ],
                ),
              ),
            ),
          ),
          body: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                height: 70,
                child: Container( // menu atas
                  decoration: BoxDecoration(
                      color: this.blue,
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
                  padding: EdgeInsets.fromLTRB(4.0, 0, 4.0, 10),
                  // height: (MediaQuery.of(context).orientation == Orientation.portrait)? MediaQuery.of(context).size.height / 4 : MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Scaffold(
                  bottomNavigationBar: Container(
                      height: 56,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 50,
                            child: InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => KategoriPage()),
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
                                          fontSize: 18,
                                          color: Colors.white
                                      )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 50,
                            child: InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => KompetensiPage()),
                                );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                color: Colors.grey[400],
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Text("SELANJUTNYA", style: TextStyle(
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
                  backgroundColor: Colors.transparent,
                  body:
                   SingleChildScrollView(
                     child:
                     Container(
                         child: Column(
                           children: <Widget>[
                             Card(
                                 color: Colors.white,
                                 elevation: 5,
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(15),
                                 ),
                                 margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                                 child: Padding(
                                     padding: EdgeInsets.all(20),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.stretch,
                                       children: <Widget>[
                                         Padding(
                                           padding: EdgeInsets.only(bottom: 10,),
                                           child: Text('Pre-test', textAlign: TextAlign.left, style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             fontSize: 20,
                                             color: Color(0xff474646),
                                           ),),
                                         ),
                                         Padding(
                                           padding: EdgeInsets.only(bottom: 37,top: 27),
                                           child: Text('Soal 1 dari 2', textAlign: TextAlign.center, style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             fontSize: 16,
                                             color: Color(0xff474646),
                                           ),),
                                         ),
                                         //soal disini nantinya
                                         Column(
                                           children: <Widget>[
                                             Container (
                                                 child:
                                                 Padding(
                                                   padding: EdgeInsets.only(bottom: 10,),
                                                   child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. At vel laoreet sit nisi. Quis pellentesque augue eu, pulvinar elit amet ornare vulputate ipsum. Accumsan aliquet elementum sem posuere in id. Posuere est id bibendum arcu lacinia dolor.', textAlign: TextAlign.justify, style: TextStyle(
                                                       fontSize: 16,
                                                       color: Color(0xff474646)
                                                   )),
                                                 ),
                                             ),
                                             Container(
                                               height: 200.0,
                                                child:
                                                ResponsiveGridList(
                                                    desiredItemWidth: 100, // 100 kotak, 200 memanjang
                                                    minSpacing: 5,
                                                    children: jawaban.asMap().map((i,row) => MapEntry(i,
                                                        GestureDetector(
                                                            onTap: (){
                                                              setState(() {
                                                                 isSelected = true;
                                                              });
                                                            },
                                                            child: Container(
                                                              alignment: Alignment.topLeft,
                                                              padding: EdgeInsets.all(10),
                                                              decoration: BoxDecoration(
                                                                color: Colors.white,
                                                                borderRadius: BorderRadius.circular(10),
                                                                border: Border.all(color: isSelected ? this.orange : Colors.grey[300], width: 1),
                                                              ),
                                                              child: Text(i.toString() + row.toString()),
                                                        ))
                                                    )).values.toList()
                                                )
                                             )
                                           ],
                                         ),
                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: [
                                             Flexible(
                                                 flex: 33,
                                                 child: Padding(
                                                     padding: EdgeInsets.all(15),
                                                     child: Image(
                                                       image: AssetImage('assets/icon/ico_bumn.png'),
                                                       height: 25,
                                                       width: 80,
                                                     )
                                                 )
                                             ),
                                             Flexible(
                                                 flex: 33,
                                                 child: Padding(
                                                     padding: EdgeInsets.all(15),
                                                     child: Image(
                                                       image: AssetImage('assets/icon/ico_waskita.png'),
                                                       height: 25,
                                                       width: 80,
                                                     )
                                                 )
                                             ),
                                             Flexible(
                                                 flex: 33,
                                                 child: Padding(
                                                     padding: EdgeInsets.all(15),
                                                     child: Image(
                                                       image: AssetImage('assets/icon/ico_epcd.png'),
                                                       height: 25,
                                                       width: 80,
                                                     )
                                                 )
                                             ),
                                           ],
                                         )
                                       ],
                                     )
                                 )
                             ),
                           ],
                         )
                     )
                   )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void clicked2(BuildContext context, menu) {
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: Text(menu),
      action: SnackBarAction(
          label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}