import 'package:fakely/searchbar.dart';
import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fakely"),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              SearchBar(),
            ],
          ),
        ),
      ),
    );
  }
}
