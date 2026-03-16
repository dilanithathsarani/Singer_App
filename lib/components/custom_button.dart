import 'package:flutter/material.dart';
import 'package:singer/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool isOutlinedButton;
  final VoidCallback onTap;
  const CustomButton({
    super.key,
    required this.text,
    this.isOutlinedButton = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        width: double.infinity,
        decoration: BoxDecoration(
          color: isOutlinedButton ? Colors.transparent : AppColors.primaryColor,
          border: isOutlinedButton
              ? Border.all(color: AppColors.primaryColor)
              : null,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isOutlinedButton ? AppColors.primaryColor : Colors.white,
              fontWeight: isOutlinedButton ? null : FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
