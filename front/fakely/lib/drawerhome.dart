import "package:flutter/material.dart";
import "package:fakely/contatodrawer.dart";

class DrawerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green[300],
              ),
              child: Column(
                children: [
                  Text(
                    'Seja bem vinda Dona Maria!',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    width: 100,
                    height: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/images/Imagem2.jpg',
                          )),
                    ),
                  ),
                ],
              )),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('FAQ'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => ContatoDrawer(),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            title: Text('Adicione o ChatBox'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => ContatoDrawer(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
