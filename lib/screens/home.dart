import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks_learn/screens/components/custom_button.dart';
import 'package:flutter_hooks_learn/screens/use_effect.dart';
import 'package:flutter_hooks_learn/screens/use_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(text: "useState", child: UseStateScreen()),
          CustomButton(text: "useEffect", child: UseEffectScreen()),
        ],
      ),
    );
  }
}
