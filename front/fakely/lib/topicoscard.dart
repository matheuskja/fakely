import "package:flutter/material.dart";

class TopicosCard extends StatefulWidget {
  String _topico;
  TopicosCard(this._topico);

  @override
  _TopicosCardState createState() => _TopicosCardState();
}

class _TopicosCardState extends State<TopicosCard> {
  bool selected;
  Color col = Colors.grey;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(bottom: 10, left: 10),
        width: 55,
        height: 25,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: col,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
          ),
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
      onTap: ()=>setState(() {
        this.selected = !this.selected;
        this.col = this.selected ? Colors.purple : Colors.grey;
        print("ok");
      }),
    );
  }
}
