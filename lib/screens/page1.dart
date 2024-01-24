import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/screens/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Page Transition'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Page2(),
          ),
        ),
        child: const Icon(CupertinoIcons.chevron_right),
      ),
    );
  }
}
