import 'package:flutter/material.dart';
  class TextComponent extends StatelessWidget {

    final String title;
    final double fontSize;
    final TextAlign textAlign;

   const TextComponent({
     super.key,
      required this.title,
     this.fontSize = 16.0, // padão
     this.textAlign = TextAlign.start // paddrão
    });

    @override
    Widget build(BuildContext context) {
      return  Text(
        title,
        style: TextStyle(fontSize: fontSize),
        textAlign: textAlign,
      );
    }

  }
