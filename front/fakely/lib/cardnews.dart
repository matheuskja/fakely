import 'package:fakely/newspage.dart';
import 'package:fakely/titlecard.dart';
import 'package:fakely/fakecard.dart';
import 'package:flutter/material.dart';
import 'package:fakely/cardtext.dart';
import 'package:fakely/topicoscard.dart';
import 'package:fakely/imagemcard.dart';

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
        clipBehavior: Clip.antiAlias,
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
                  TitleCard(this.title),
                  FakeCard(true),
                ],
              ),

              Expanded(
                child: CardText(this.text),
              ),
              // Expanded(child: ImagemCard(),flex: 100000,)

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
