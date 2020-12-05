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
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
        ),
      ),
    );
  }
}
