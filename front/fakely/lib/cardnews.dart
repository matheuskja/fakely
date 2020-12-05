import 'package:fakely/newspage.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  String title;
  String text;
  String result = "Fake";

  NewsCard(this.title, this.text);
  @override
  Widget build(BuildContext context) {
    Color colResult;
    if (result == "Fake") {
      colResult = Colors.red;
    } else {
      colResult = Colors.green;
    }
    return GestureDetector(
      child: Card(
        child: Container(
          width: double.infinity,
          height: 100,
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
                      width: 300,
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                          width: 2,
                        ),
                      ),
                      child: Text(
                        this.result,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: colResult,
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
