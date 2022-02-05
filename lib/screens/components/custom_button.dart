import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.child})
      : super(key: key);

  final String text;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: () {
          Navigator.push(context, CupertinoPageRoute(builder: (ctx) => child));
        },
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(text),
      ),
    );
  }
}
