import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    this.obscureText,
    this.hintText,
    this.height,
    this.width,
    this.icon,
    this.keyboardType,
    this.color,
    this.label,
  });

  final double? height;
  final double? width;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Widget? icon;
  final String? hintText;
  final Color? color;
  final Widget? label;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.8,
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        height: height,
        width: width,
        child: TextField(
          obscureText: obscureText ?? false,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            label: label,
            suffixIcon: icon,
            fillColor: color ?? const Color(0xffF6F6F6),
            contentPadding: const EdgeInsets.only(top: 10, left: 10),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xff999DA1),
              fontSize: 12,
              fontFamily: 'PoppinsRegular',
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
