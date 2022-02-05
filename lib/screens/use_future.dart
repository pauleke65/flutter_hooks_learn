import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UseFutureScreen extends HookWidget {
  const UseFutureScreen({Key? key}) : super(key: key);

  Future<String> fetchData() async {
    await Future.delayed(const Duration(seconds: 2));
    return 'ehe';
  }

  @override
  Widget build(BuildContext context) {
    final future = useMemoized(fetchData);
    final snapshot = useFuture(future);

    return Scaffold(
      body: Center(
        child: snapshot.hasData
            ? Text('${snapshot.data}')
            : const CircularProgressIndicator(),
      ),
    );
  }
}
