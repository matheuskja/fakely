import "package:flutter/material.dart";

class SearchBar extends StatefulWidget {
  final Function pressedButtonSearch;
  SearchBar(this.pressedButtonSearch);
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String query = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: 20),
      alignment: Alignment.center,
      width: double.infinity,
      child: Row(
        children: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: ()=>this.widget.pressedButtonSearch(this.query)),
          Expanded(
            child: TextField(
              onChanged: (s) => setState(() {
                this.query = s;
                print(s);
              }),
              decoration: InputDecoration(
                labelText: "Procure sua notícia: ",
              ),
              onSubmitted: this.widget.pressedButtonSearch,
            ),
          ),
        ],
      ),
    );
  }
}
