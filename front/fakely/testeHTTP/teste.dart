import 'package:http/http.dart' as http;
import 'dart:convert' show jsonDecode;

void main() {
  String permissao = 'AIzaSyAxZagN6_Q6GfqLs6ReQUH3a2TVPbhgqQw';
  String q = 'bolsonaro';
  var url =
      'https://factchecktools.googleapis.com/v1alpha1/claims:search?languageCode=pt&query=${q}d&key=${permissao}';
  http.get(url).then((response) {
    var results = jsonDecode(response.body)["claims"];
    print(results);
    if(results == null){
      results = [];
    }
    results = results
        .map((e) => NewsAux(e["claimReview"][0]["title"], e["text"],
            e["claimReview"][0]["textualRating"], ['Covid', 'Bolsonaro']))
        .toList();
    results.map((e) => (print(e.title)));
  });
}

class NewsAux {
  String title;
  String text;
  String result;
  List<String> topicos;
  NewsAux(this.title, this.text, this.result, this.topicos);
}
