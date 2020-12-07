import 'package:flutter/material.dart';
import 'package:fakely/searchbar.dart';
import 'package:fakely/cardnews.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show jsonDecode;

import 'package:fakely/API/key.dart' as credentials;

class SearchView extends StatefulWidget {
  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  bool noresults = false;
  void searchNews(String s) {
    final String text_test = ''' 
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt fa bricio est otario magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          
        ''';
    // TODO: do a query to Sandra's and Felipe's backend
    var results;
    String permissao = 'AIzaSyAxZagN6_Q6GfqLs6ReQUH3a2TVPbhgqQw';
    var url =
        'https://factchecktools.googleapis.com/v1alpha1/claims:search?languageCode=pt&query=${s}d&key=${credentials.permissao}';
    print(s);
    http.get(url).then((res) {
      if (res.statusCode >= 400) {
        return;
      }
      try {
        results = jsonDecode(res.body);
        print(results);
        results = results["claims"];
      } catch (e) {
        results = [];
      }
      if (results == null) {
        results = [];
      }
      results = results
          .map((e) => NewsAux(
              e["claimReview"][0]["title"],
              e["text"],
              e["claimReview"][0]["textualRating"],
              ['Covid', 'Bolsonaro'],
              e["claimReview"][0]["url"]))
          .toList();
      setState(() {
        if (results.length == 0) {
          this.noresults = true;
        } else {
          this.noresults = false;
        }
        this.noticias = results;
      });
    });
  }

  var noticias = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SearchBar(searchNews),
          Expanded(
            child: ListView(
              children: noticias
                  .map((e) => NewsCard(
                        e.title,
                        e.text,
                        e.result,
                        e.topicos,
                        e.fonte,
                      ))
                  .toList(),
            ),
          ),
          NoResults(this.noresults),
        ],
      ),
    );
  }
}

class NewsAux {
  String title;
  String text;
  String result;
  String fonte;
  List<String> topicos;
  NewsAux(this.title, this.text, this.result, this.topicos, this.fonte);
}

class NoResults extends StatelessWidget {
  bool noResults;
  NoResults(this.noResults);

  @override
  Widget build(BuildContext context) {
    if (noResults) {
      return Container(
        child: Text(
          "Nenhuma notícia foi achada",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
        ),
        width: 1000,
        height: 10,
      );
    }
    return Container();
  }
}
