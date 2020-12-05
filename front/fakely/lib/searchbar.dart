import "package:flutter/material.dart";

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String query = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      child: Row(
        children: [
          IconButton(icon: Icon(Icons.search), onPressed: null),
          Expanded(
            child: TextField(
              onChanged: (s) => setState(() {
                this.query = s;
                print(s);
              }),
              decoration: InputDecoration(
                labelText: "Procure sua notícia: ",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
