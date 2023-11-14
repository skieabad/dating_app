import 'package:dating_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final void Function() onTap;

  const CustomCard({
    super.key,
    required this.child,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap.call(),
      child: Container(
        height: 64.0,
        width: 64.0,
        decoration: BoxDecoration(
          color: const Color(0xFFF3F3F3),
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: AppColors.borderColor,
            width: 1.0,
          ),
        ),
        child: child,
      ),
    );
  }
}
