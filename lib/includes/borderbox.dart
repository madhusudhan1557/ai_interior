import 'package:flutter/material.dart';

class BorderBox extends StatelessWidget {
  final double radius;

  final Color color1;
  final Color color;
  final Widget child;
  const BorderBox({
    super.key,
    required this.color1,
    required this.color,
    required this.radius,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: radius,
            color: color1,
          )
        ],
      ),
      child: child,
    );
  }
}
