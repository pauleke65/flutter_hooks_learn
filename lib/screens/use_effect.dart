import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UseEffectScreen extends HookWidget {
  const UseEffectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        // initState
        return () {
          // dispose
        };
      },
      [], // didUpdateWidget
      // null: fires in every change
      // empty list: fires only once on the first time
      // list with items: fires when any of the items on the list change.
    );
    return Container();
  }
}
