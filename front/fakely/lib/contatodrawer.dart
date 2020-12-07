import "package:flutter/material.dart";

class ContatoDrawer extends StatelessWidget {
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
                onPressed: null,
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: Text(
                "Adicione o Mr. Fakely",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: Text(
                "Ele vai te ajudar a verificar as noticias\n rapidamente à partir da sua\n rede social preferida.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            GestureDetector(
              onTap: () {
                showAlertDialog(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                width: 100,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/WhatsApp.png',
                      )),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showAlertDialog(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                width: 100,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/facebook.png',
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons

  Widget faceButton = FlatButton(
    child: Text("Sim"),
    onPressed: () {},
  );
  Widget whatsButton = FlatButton(
    child: Text("Cancelar"),
    onPressed: () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Adicionar contato"),
    content: Text("Você quer adicionar Mr. Fakely aos seus contatos?"),
    actions: [
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
