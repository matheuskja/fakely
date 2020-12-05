import 'package:fakely/newspage.dart';
import 'package:fakely/teste.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  String title;
  String text;
  String result = "Fake";

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
        child: Container(
          width: double.infinity,
          height: 200,
          color: colText,
          child: Column(
            children: [
              Text(
                this.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  fontFamily: "comicsans",
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 200,
                      child: SingleChildScrollView(
                        child: Text(
                          this.text,
                          textAlign: TextAlign.left,
                          // overflow: TextOverflow.ellipsis,
                          // softWrap: true,

                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: colResult,
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                          width: 2,
                        ),
                      ),
                      child: Text(
                        this.result,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
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
