import 'package:flutter/material.dart';

class MitButton extends StatelessWidget {
  final Color buttonColor;
  final Border border;
  final String buttonText;
  final Widget onTap;
  final Color textColor;
  final double width;
  const MitButton(
      {Key key,
      @required this.buttonColor,
      this.border,
      this.buttonText,
      @required this.onTap,
      this.textColor,
      @required this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => onTap));
      },
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(15),
          border: border,
        ),
        padding: EdgeInsets.symmetric(vertical: 9.0),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(color: textColor, fontSize: 21),
          ),
        ),
      ),
    );
  }
}
