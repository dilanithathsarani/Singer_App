import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  String? label;
  IconData? icon;
  bool isPassword;

  CustomTextField({super.key, this.icon, this.label, this.isPassword = false});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.grey.shade800,
      obscureText: !isVisible,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: TextStyle(color: Colors.grey.shade800),
        prefixIcon: widget.icon == null ? null : Icon(widget.icon),
        suffixIcon: widget.isPassword ? Icon(Icons.visibility) : null,
        focusColor: Colors.grey.shade800,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade700),
          borderRadius: BorderRadius.circular(20),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade700),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
