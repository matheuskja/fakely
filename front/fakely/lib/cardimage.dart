import "package:flutter/material.dart";

class CardImage extends StatelessWidget {
  // String _text;
  // CardImage(this._text);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: const BoxDecoration(
        image: DecorationImage(
            alignment: Alignment.center,
            image: NetworkImage('https://googleflutter.com/sample_image.jpg'),
            fit: BoxFit.cover),
      ),
    );
  }
}
