import "package:flutter/material.dart";

class ImagemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/Imagem.png'),
        ),
      ),
    );
  }
}
