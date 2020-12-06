import 'package:fakely/cardnews.dart';
import 'package:fakely/searchbar.dart';
import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String text_test = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
    List<String> noticias = ["Fabricio não é otario","Bolsonaro Afirma que Fabricio não é otario"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[200],
          title: Text("Fakely"),
        ),
        
        body: Container(
          child: Column(
              children: [
              SearchBar(),
              Expanded(
                child: ListView(
                  children: noticias.map((e) => NewsCard(e,text_test)).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
