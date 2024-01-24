import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/page_section.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(CupertinoIcons.chevron_left),
        label: const Text('Go back'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageSection(
              initialOffsetX: 1,
              intervalStart: 0,
              intervalEnd: 0.5,
              widget: Container(
                color: Colors.teal,
              ),
            ),
          ),
          Expanded(
            child: PageSection(
              initialOffsetX: -1,
              intervalStart: 0.5,
              intervalEnd: 1,
              widget: Container(
                color: Colors.brown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
