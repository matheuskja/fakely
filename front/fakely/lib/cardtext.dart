import "package:flutter/material.dart";

class CardText extends StatelessWidget {
  String _text;
  CardText(this._text);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Text(
          this._text,
          textAlign: TextAlign.left,
          // overflow: TextOverflow.ellipsis,
          // softWrap: true,

          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
