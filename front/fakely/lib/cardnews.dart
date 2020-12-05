import 'package:fakely/newspage.dart';
import 'package:fakely/titlecard.dart';
import 'package:fakely/fakecard.dart';
import 'package:flutter/material.dart';
import 'package:fakely/cardtext.dart';
import 'package:fakely/topicoscard.dart';

class NewsCard extends StatelessWidget {
  String title;
  String text;
  String result = "Fake";
  List<String> topicos = ["Covid", "Vacina"];
  NewsCard(this.title, this.text);
  @override
  Widget build(BuildContext context) {
    Color colResult;
    Color colText;
    if (result == "Fake") {
      colResult = Colors.red;
      colText = Colors.red[200];
    } else {
      colResult = Colors.green;
      colText = Colors.green[300];
    }
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(10),
        child: Container(
          width: double.infinity,
          height: 200,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TitleCard("Titulo da noticia"),
                  FakeCard(true),
                ],
              ),
              Expanded(
                child: CardText(this.text),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: topicos.map((e) => TopicosCard(e)).toList(),
              )
            ],
          ),
        ),
      ),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => NewsPage(),
        ),
      ),
    );
  }
}
