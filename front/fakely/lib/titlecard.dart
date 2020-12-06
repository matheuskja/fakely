import "package:flutter/material.dart";

class TitleCard extends StatelessWidget {
  String _title;
  TitleCard(this._title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 280,
      child: Text(
        this._title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
