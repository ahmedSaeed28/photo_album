import 'package:flutter/material.dart';

class WhiteButton extends StatelessWidget{

  final String text;
  final Function onPress;

  const WhiteButton({Key? key, required this.text, required this.onPress}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              Colors.white)
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black
          ),
        ),
        onPressed: () => onPress()
      ),
    );
  }
}
