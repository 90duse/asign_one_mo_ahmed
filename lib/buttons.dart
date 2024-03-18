import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final color;
  final textColor;
  final buttonText;
  MyButton({this.color, this.textColor, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        color: color,
        child: Center(child: Text(buttonText, style: TextStyle(color: textColor),),),

      )
      );
  }
}
