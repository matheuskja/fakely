import 'package:fakely/homepage.dart';
import "package:flutter/material.dart";

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    String newTitle = "Titulo da Noticia";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.pop(context),
              ),
              Text(
                newTitle,
                textAlign: TextAlign.center,
              ),
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePage(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
