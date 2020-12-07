import 'package:fakely/titlecard.dart';
import "package:flutter/material.dart";

class NewsPage extends StatefulWidget {
  String titulo;
  String texto;
  String font = "minhabunda.com";
  NewsPage(this.titulo, this.texto, this.font);
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[200],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.pop(context),
              ),
              Text(
                "Fakely",
                textAlign: TextAlign.center,
              ),
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: (){showAlertDialog(context);
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                    child: Text(
                      this.widget.titulo,
                      style: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                // Container(
                //   margin: EdgeInsets.all(10),
                //   alignment: Alignment.center,
                //   child: Card(
                //     color: Colors.grey[200],
                //     child: Image.network(
                //       'https://googleflutter.com/sample_image.jpg',
                //       fit: BoxFit.cover,
                //       loadingBuilder: (BuildContext context, Widget child,
                //           ImageChunkEvent loadingProgress) {
                //         if (loadingProgress == null) return child;
                //         return Center(
                //           child: CircularProgressIndicator(
                //             value: loadingProgress.expectedTotalBytes != null
                //                 ? loadingProgress.cumulativeBytesLoaded /
                //                     loadingProgress.expectedTotalBytes
                //                 : null,
                //           ),
                //         );
                //       },
                //     ),
                //   ),
                // ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    this.widget.texto,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  child: Text('Fonte: ${this.widget.font}'),
                  margin: EdgeInsets.all(10),
                ),
              ],
            ),
            // body: Image.asset(
            //   'assets/images/Image.png',
            //   scale: 0.8,
            // ),
            // ),
          ),
        ),
      ),
    );
  }
}
showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("Cancelar"),
    onPressed:  () {},
  );
  Widget faceButton = FlatButton(
    child: Text("Facebook"),
    onPressed:  () {},
  );
  Widget whatsButton = FlatButton(
    child: Text("WhatsApp"),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Compartilhar"),
    content: Text("Em qual aplicativo você deseja compartilhar essa notícia?"),
    actions: [
      cancelButton,
      faceButton,
      whatsButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}