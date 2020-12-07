import 'package:fakely/newspage.dart';
import 'package:fakely/titlecard.dart';
import 'package:fakely/fakecard.dart';
import 'package:flutter/material.dart';
import 'package:fakely/cardtext.dart';
import 'package:fakely/topicoscard.dart';
import 'package:fakely/cardimage.dart';

// ignore: must_be_immutable
class NewsCard extends StatelessWidget {
  String title;
  String text;
  Color colResult;
  Color colText;
  List<String> topicos;
  bool isFake;
  String fonte;
  NewsCard(this.title, this.text, result, this.topicos, this.fonte) {
    if (result != "Verdade") {
      colResult = Colors.red;
      colText = Colors.red[200];
      isFake = true;
    } else {
      colResult = Colors.green;
      colText = Colors.green[300];
      isFake = false;
    }
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.all(10),
        child: Container(
          width: double.infinity,
          height: 150,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TitleCard(this.title),
                  FakeCard(isFake),
                ],
              ),
              Expanded(
                child: CardText(this.text),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: topicos.map((e) => TopicosCard(e)).toList(),
              ),
            ],
          ),
        ),
      ),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => NewsPage(this.title, this.text, this.fonte),
        ),
      ),
    );
  }
}
