import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UseStreamScreen extends HookWidget {
  const UseStreamScreen({Key? key}) : super(key: key);

  Stream<int> fetchData() async* {
    int i = 0;
    do {
      await Future.delayed(const Duration(seconds: 1));
      i++;
      yield i;
    } while (i < 10);
  }

  @override
  Widget build(BuildContext context) {
    final stream = useMemoized(fetchData);
    final snapshot = useStream(stream);

    return Scaffold(
      body: Center(child: Text('${snapshot}')),
    );
  }
}
