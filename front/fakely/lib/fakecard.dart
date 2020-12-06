import "package:flutter/material.dart";

class FakeCard extends StatelessWidget {
  Color color;
  String text;
  FakeCard(bool classification) {
    if (classification) {
      this.text = "Fake";
      this.color = Colors.red;
    } else {
      this.text = "Verdade";
      this.color = Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top:7,),
      width: 100,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 0,
        ),
      ),
      child: Text(
        this.text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    );
  }
}
