import 'package:dating_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final void Function()? onPressed;
  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.onPressed,
    this.textColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        elevation: 0.0,
        fixedSize: const Size(295.0, 56.0),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: borderColor ?? Colors.transparent,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      onPressed: () => onPressed?.call(),
      child: Text(
        text,
        style: TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
          color: textColor ?? AppColors.primaryColor,
        ),
      ),
    );
  }
}
