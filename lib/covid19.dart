import 'package:flutter/material.dart';

import 'about.dart';
import 'network.dart';

class CoronaVirusApp extends StatefulWidget {
  @override
  _CoronaVirusAppState createState() => _CoronaVirusAppState();
}

class _CoronaVirusAppState extends State<CoronaVirusApp> {
  Future data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = getData();
    data.then((value) => {print(value[0]['name'])});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Covid Tracker"),
          backgroundColor: Colors.indigo,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.info_outline),
              color: Colors.white,
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => About()));},
            )
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height * 1,
          child: Column(
            children: <Widget>[
              _buildStatCard('Negara', 'name', Colors.purple),
              _buildStatCard('Positif', 'positif', Colors.red),
              _buildStatCard('Sembuh', 'sembuh', Colors.green),
              _buildStatCard('Dirawat', 'dirawat', Colors.orange),
              _buildStatCard('Meninggal', 'meninggal', Colors.lightBlue),
            ],
          ),
        ));
  }

  Expanded _buildStatCard(String title, String count, MaterialColor color) {
    return Expanded(
      child: Container(
        width: 1000,
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            FutureBuilder(
                future: data,
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      "${snapshot.data[0][count]}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                })
          ],
        ),
      ),
    );
  }

  dirawat() {
    return FutureBuilder(
        future: data,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Text("${snapshot.data[0]["dirawat"]}");
          } else {
            return CircularProgressIndicator();
          }
        });
  }

  Future getData() async {
    Network network = Network("https://api.kawalcorona.com/indonesia/");
    return network.fetchData();
  }
}
