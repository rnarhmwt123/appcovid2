import 'package:flutter/material.dart';

class Kelurahan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Column(
        children: <Widget>[
          new Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: new EdgeInsets.all(10.0),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(10.0),
                  ),
                  new Text(
                    "Tracking Berdasarkan Kelurahan",
                    style: new TextStyle(
                        fontSize: 20.0, color: Colors.indigo[900]),
                  ),
                  new Row(
                    children: <Widget>[
                      new Container(
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding:
                                    EdgeInsets.all(10)), //Untuk Jarak paragraf
                            Text('Positif',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black)),
                            Padding(padding: EdgeInsets.all(10)),
                            Text('100 orang')
                          ],
                        ),
                        width: 150,
                        height: 150,
                        margin: EdgeInsets.all(15.0),
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      new Container(
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding:
                                    EdgeInsets.all(10)), //Untuk Jarak paragraf
                            Text('Sembuh',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black)),
                            Padding(padding: EdgeInsets.all(10)),
                            Text('100 orang'),
                          ],
                        ),
                        width: 150,
                        height: 150,
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  ),
                  new Column(
                    children: <Widget>[
                      new Container(
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding:
                                    EdgeInsets.all(10)), //Untuk Jarak paragraf
                            Text('Meninggal',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black)),
                            Padding(padding: EdgeInsets.all(10)),
                            Text('100 orang'),
                          ],
                        ),
                        width: 150,
                        height: 150,
                        margin: EdgeInsets.all(15.0),
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
