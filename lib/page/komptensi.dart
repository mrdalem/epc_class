part of 'pages.dart';

class KompetensiPage extends StatefulWidget{
  @override
  _KompetensiPage createState() => _KompetensiPage();
}

class _KompetensiPage extends State<KompetensiPage> {
  var blue    = const Color(0xff1B44A6);
  var orange  = const Color(0xffD98E28);

  String _selectValue;
  List _select = [
    "Superintendent",
    "Superintendent 2",
    "Superintendent 3",
    "Superintendent 4",
  ];

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
                Container(color: this.blue,),
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
                                  MaterialPageRoute(builder: (context) => BerandaPage()),
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
                      new GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => KategoriPage()),
                          );
                        },
                        child: Container(
                          height: (MediaQuery.of(context).orientation == Orientation.portrait)? MediaQuery.of(context).size.height / 8 : MediaQuery.of(context).size.height / 4,
                          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          margin: EdgeInsets.fromLTRB(15, (MediaQuery.of(context).orientation == Orientation.portrait)? MediaQuery.of(context).size.height / 3.4 : MediaQuery.of(context).size.height / 2, 15, 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
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
                                                child: Text("Metode Konstruksi",style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                ),),
                                              ),
                                              SizedBox(height: ("Metode Kontruksi".length >= 24)? 0: 20,),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                                    child: Text("3 kategori",style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 10,
                                                    ),),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                                                    child: Text("16 materi  ",style: TextStyle(
                                                      fontWeight: FontWeight.w400,
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
                                      color: this.orange),
                                  child:  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                        child:
                                        Text("Sisa materi",style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.white
                                        ),),
                                      ),
                                      Text("15",style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 26,
                                          color: Colors.white
                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: (MediaQuery.of(context).orientation == Orientation.portrait)? MediaQuery.of(context).size.height / 8 : MediaQuery.of(context).size.height / 4,
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        margin: EdgeInsets.fromLTRB(15, 5, 15, 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
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
                                    child: Text("2",style: TextStyle(
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
                                              child: Text("Manajemen Risiko",style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                              ),),
                                            ),
                                            SizedBox(height: ("Manajemen Risiko".length >= 24)? 0: 20,),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                                  child: Text("2 kategori",style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10,
                                                  ),),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                                                  child: Text("12 materi  ",style: TextStyle(
                                                    fontWeight: FontWeight.w400,
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
                                    color: this.orange),
                                child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                      child:
                                      Text("Sisa materi",style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.white
                                      ),),
                                    ),
                                    Text("12",style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 26,
                                        color: Colors.white
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: (MediaQuery.of(context).orientation == Orientation.portrait)? MediaQuery.of(context).size.height / 8 : MediaQuery.of(context).size.height / 4,
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        margin: EdgeInsets.fromLTRB(15, 5, 15, 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
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
                                    child: Text("3",style: TextStyle(
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
                                              child: Text("Spesifikasi dan Material Peralatan",style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                              ),),
                                            ),
                                            SizedBox(height: ("Spesifikasi dan Material Peralatan".length >= 24)? 0: 20,),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                                  child: Text("2 kategori",style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10,
                                                  ),),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                                                  child: Text("12 materi  ",style: TextStyle(
                                                    fontWeight: FontWeight.w400,
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
                                height: MediaQuery.of(context).size.height,
                                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15.0),
                                        bottomRight: Radius.circular(15.0)),
                                    color: this.orange),
                                child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                      child:
                                      Text("Sisa materi",style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.white
                                      ),),
                                    ),
                                    Text("12",style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 26,
                                        color: Colors.white
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: (MediaQuery.of(context).orientation == Orientation.portrait)? MediaQuery.of(context).size.height / 8 : MediaQuery.of(context).size.height / 4,
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        margin: EdgeInsets.fromLTRB(15, 5, 15, 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
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
                                    child: Text("4",style: TextStyle(
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
                                              child: Text("Manajemen Logistik dan Peralatan",style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                              ),),
                                            ),
                                            SizedBox(height: ("Manajemen Logistik dan Peralatan".length >= 24)? 0: 20,),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                                  child: Text("3 kategori",style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10,
                                                  ),),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                                                  child: Text("16 materi  ",style: TextStyle(
                                                    fontWeight: FontWeight.w400,
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
                                height: MediaQuery.of(context).size.height,
                                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15.0),
                                        bottomRight: Radius.circular(15.0)),
                                    color: this.orange),
                                child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                      child:
                                      Text("Sisa materi",style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.white
                                      ),),
                                    ),
                                    Text("16",style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 26,
                                        color: Colors.white
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: (MediaQuery.of(context).orientation == Orientation.portrait)? MediaQuery.of(context).size.height / 8 : MediaQuery.of(context).size.height / 4,
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        margin: EdgeInsets.fromLTRB(15, 5, 15, 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
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
                                    child: Text("5",style: TextStyle(
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
                                              child: Text("Regulasi tentang Jasa Konstruksi",style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                              ),),
                                            ),
                                            SizedBox(height: ("Regulasi tentang Jasa Konstruksi".length >= 24)? 0: 20,),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                                  child: Text("1 kategori",style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10,
                                                  ),),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                                                  child: Text("5 materi  ",style: TextStyle(
                                                    fontWeight: FontWeight.w400,
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
                                height: MediaQuery.of(context).size.height,
                                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15.0),
                                        bottomRight: Radius.circular(15.0)),
                                    color: this.orange),
                                child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                      child:
                                      Text("Sisa materi",style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.white
                                      ),),
                                    ),
                                    Text("5",style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 26,
                                        color: Colors.white
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
                      color: this.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
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
                  height: (MediaQuery.of(context).orientation == Orientation.portrait)? MediaQuery.of(context).size.height / 3.2 : MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Kompetensi", style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 1,
                              color: Colors.white
                          ),),
                        ],
                      ),
                      SizedBox(height: 20.0,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Text("Pilih pekerjaan", style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: this.orange, spreadRadius: 3),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                              child:  DropdownButton(
                                hint: Text("Select"),
                                value: _selectValue,
                                dropdownColor: Colors.white,
                                icon: Icon(Icons.keyboard_arrow_down),
                                iconEnabledColor: this.orange,
                                items: _select.map((value) {
                                  return DropdownMenuItem(
                                    child: Text(value),
                                    value: value,
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectValue = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
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