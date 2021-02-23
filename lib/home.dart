import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: new ListView(
        children: <Widget>[
          new Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      new Container(
                        //  padding: EdgeInsets.fromLTRB(10,10,10,0),
                        height: 450,
                        width: 350,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset('assets/images/home1.jpg'),
                              Padding(
                                  padding: EdgeInsets.all(
                                      10)), //Untuk Jarak paragraf
                              Text('Selamat Datang',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.black)),
                              Padding(
                                  padding:
                                      EdgeInsets.all(5)), //Untuk Jarak paragraf
                              Text('di aplikasi Tracking Covid Indonesia'),
                            ],
                          ),
                          elevation: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
