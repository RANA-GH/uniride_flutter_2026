import 'package:flutter/material.dart';

class CustomTextfiled extends StatefulWidget {
  final Color? color;
  final String hintText;
  final String? labelText;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final bool isPassword;
  final double? width;
  final double? height;

  const CustomTextfiled({super.key ,
    this.color,
    required this.hintText,
    this.labelText,
    this.hintStyle,
    this.labelStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.controller,
    this.validator,
    this.keyboardType,
    this.isPassword = false,
    this.width,
    this.height,
  });

  @override
  State<CustomTextfiled> createState() => _CustomTextfiledState();
}

class _CustomTextfiledState extends State<CustomTextfiled> {
  late bool obscure; 
  @override
  void initState() {
    super.initState();
    obscure = widget.isPassword ? true : widget.obscureText; 
  }
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}