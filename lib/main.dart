import 'package:flutter/material.dart';

import './home.dart' as home;
import './hal1.dart' as hal1;
import './hal2.dart' as hal2;
import './kota.dart' as kota;
import './kecamatan.dart' as kecamatan;
import './kelurahan.dart' as kelurahan;
import './hal3.dart' as hal3;
import './hal4.dart' as hal4;

// void main() {
//   runApp(new MyApp(
//     title: "Tampilkan Tab Bar",
//     home: new Home(),
//   ));
// }

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tampilan Tab Bar',
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  //create controller  untuk tabBar
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 8, vsync: this);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //create AppBar
      appBar: new AppBar(
        //warna Background
        backgroundColor: Colors.blue[100],
        //judul
        title: new Text('Tracking covid'),
        //buttom
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(
                Icons.home,
                color: Colors.blue,
              ),
              text: "Home",
            ),
            new Tab(
              icon: new Icon(
                Icons.assessment,
                color: Colors.blue,
              ),
              text: "Track",
            ),
            new Tab(
              icon: new Icon(
                Icons.business_outlined,
                color: Colors.blue,
              ),
              text: "Provinsi",
            ),
            new Tab(
              icon: new Icon(
                Icons.business_outlined,
                color: Colors.blue,
              ),
              text: "Kota",
            ),
            new Tab(
              icon: new Icon(
                Icons.business_outlined,
                color: Colors.blue,
              ),
              text: "Kec",
            ),
            new Tab(
              icon: new Icon(
                Icons.business_outlined,
                color: Colors.blue,
              ),
              text: "Kel",
            ),
            new Tab(
              icon: new Icon(
                Icons.article,
                color: Colors.blue,
              ),
              text: "Shop",
            ),
            new Tab(
              icon: new Icon(
                Icons.favorite,
                color: Colors.blue,
              ),
              text: "covid",
            ),
          ],
        ),
      ),

//source  code lanjutan
//buat body  untuk tab  viewnya
      body: new TabBarView(
          //controller untuk tab bar
          controller: controller,
          children: <Widget>[
            //Kemudian Panggil Halamannya
            new home.Home(),
            new hal1.Hal1(),
            new hal2.Hal2(),
            new kota.Kota(),
            new kecamatan.Kecamatan(),
            new kelurahan.Kelurahan(),
            new hal3.Hal3(),
            new hal4.Hal4(),
          ]),
    );
  }
}
