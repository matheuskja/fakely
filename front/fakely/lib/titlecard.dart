import "package:flutter/material.dart";

class TitleCard extends StatelessWidget {
  String _title;
  TitleCard(this._title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      this._title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
