import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;

  const CustomDivider({
    super.key,
    this.height,
    this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? MediaQuery.of(context).size.height * 0.001,
      width: width ?? MediaQuery.of(context).size.width * 0.230,
      child: Center(
        child: Container(
          color: color ?? Colors.black,
        ),
      ),
    );
  }
}
