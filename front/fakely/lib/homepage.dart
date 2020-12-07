import 'package:fakely/searchandview.dart';
import "package:flutter/material.dart";
import "package:fakely/drawerhome.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: DrawerHome(),
        appBar: AppBar(
          backgroundColor: Colors.green[200],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Fakely"),
              // IconButton(
              //   icon: Icon(Icons.help),
              //   onPressed: null,
              // ),
            ],
          ),
        ),
        body: Container(
          child: SearchView(),
        ),
      ),
    );
  }
}
