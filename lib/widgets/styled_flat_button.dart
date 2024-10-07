import 'package:flutter/material.dart';



class StyledFlatButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double? radius;

  const StyledFlatButton(this.text, {this.onPressed, Key? key, this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: Colors.blue[500],
        padding: EdgeInsets.symmetric(vertical: 18.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 4.0),
          side: BorderSide(
            color: Colors.blue[500]!,
            width: 2,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          height: 1,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
