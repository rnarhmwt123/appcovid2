import 'package:flutter/material.dart';

class Hal3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Lagu(),
    );
  }
}

class Lagu extends StatelessWidget {
  final List covid = [
    "1. Covid 19",
    "2. Gejala Covid 19",
    "3. Diagnosis covid 19",
    "4. Pencegahan Covid 19",
    "5. Penanganan jika tertapapar covid 19",
    "6. Penyebab virus covid 19",
    "7. Komplikasi virus covid 19",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
                title: Text(covid[index], style: TextStyle(fontSize: 20)),
                leading: CircleAvatar(
                  child: Text(
                    covid[index][0],
                    style: TextStyle(fontSize: 20),
                  ),
                )),
          );
        },
        itemCount: covid.length,
      ),
    );
  }
}
