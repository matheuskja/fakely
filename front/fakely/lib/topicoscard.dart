import "package:flutter/material.dart";

class TopicosCard extends StatefulWidget {
  String _topico;
  TopicosCard(this._topico);

  @override
  _TopicosCardState createState() => _TopicosCardState();
}

class _TopicosCardState extends State<TopicosCard> {
  bool selected = false;
  Color col = Colors.grey;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(bottom: 10, left: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: col,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          this.widget._topico,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ),
      onTap: () => setState(() {
        this.selected = this.selected ? false : true;
        this.col = this.selected ? Colors.blueAccent[100] : Colors.grey;
      }),
    );
  }
}
