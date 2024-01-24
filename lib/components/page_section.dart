import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageSection extends StatelessWidget {
  const PageSection({
    super.key,
    required this.initialOffsetX,
    required this.intervalStart,
    required this.intervalEnd,
    required this.widget,
  });

  final Widget widget;
  final double initialOffsetX;
  final double intervalStart;
  final double intervalEnd;

  @override
  Widget build(BuildContext context) {
    final Animation<double> transitionAnimation =
        Provider.of<Animation<double>>(context, listen: false);

    return AnimatedBuilder(
      animation: transitionAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(initialOffsetX, 0),
            end: const Offset(0, 0),
          ).animate(
            CurvedAnimation(
              parent: transitionAnimation,
              curve: Interval(
                intervalStart,
                intervalEnd,
                curve: Curves.easeOutCubic,
              ),
            ),
          ),
          child: child,
        );
      },
      child: widget,
    );
  }
}
