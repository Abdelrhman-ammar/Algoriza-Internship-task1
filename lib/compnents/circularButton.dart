import 'package:flutter/material.dart';
class CircularButton extends StatefulWidget {
  Color fontColor =  Colors.black;
  String name;
  double fontSize = 16.0;
  double radiusVal = 20.0;
  Color backgroundColor = const Color.fromRGBO(250, 242, 231,1);

  CircularButton({Key? key, required this.name, required this.fontColor, required this.fontSize, required this.radiusVal, required this.backgroundColor}) : super(key: key);

  @override
  State<CircularButton> createState() => _CircularButtonState();
}

class _CircularButtonState extends State<CircularButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(widget.fontColor),
            backgroundColor: MaterialStateProperty.all<Color>(widget.backgroundColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(widget.radiusVal)),
                    side: BorderSide(color: widget.backgroundColor)
                )
            )
        ),
        onPressed: (){},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Text(
              widget.name,
              style: TextStyle(fontSize: widget.fontSize)
          ),
        )
    );
  }
}
