import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({
    super.key,
    required this.height,
    required this.width,
    required this.child,
    this.color,
    this.borderRadius,
  });

  final double height;
  final double width;
  final Widget child;
  final Color? color;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color ?? const Color(0xff50C2C9),
        borderRadius: BorderRadius.circular(borderRadius ?? 23),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
