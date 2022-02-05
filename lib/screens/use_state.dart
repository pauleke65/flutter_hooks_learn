import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UseStateScreen extends HookWidget {
  const UseStateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = useState("Paul");

    void onPressed() {
      counter.value += " PIE";
    }

    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: onPressed,
          child: Text(counter.value),
        ),
      ),
    );
  }
}
