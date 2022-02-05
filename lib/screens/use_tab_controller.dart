import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UseTabController extends HookWidget {
  const UseTabController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTabController(initialLength: 3);

    onPressed() => controller.animateTo(Random().nextInt(3));

    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: controller,
          tabs: const [
            Tab(text: '1'),
            Tab(text: '2'),
            Tab(text: '3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          Center(
              child:
                  ElevatedButton(child: const Text('1'), onPressed: onPressed)),
          Center(
              child:
                  ElevatedButton(child: const Text('2'), onPressed: onPressed)),
          Center(
              child:
                  ElevatedButton(child: const Text('3'), onPressed: onPressed)),
        ],
      ),
    );
  }
}
