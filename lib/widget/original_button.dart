import 'package:flutter/material.dart';

class OriginalButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color bgColor;
  final Color textColor;

  const OriginalButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.bgColor,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width * .9,
      child: RaisedButton(
        onPressed: onPressed,
        color: bgColor,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 1.2,
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
