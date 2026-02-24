import 'package:flutter/material.dart';
class InputField extends StatelessWidget {
  final IconData icon;
  final String label;
  final String hint;
  final bool obscure;

  final String? helperText;
  const InputField({
    required this.icon,
    required this.label,
    required this.hint,
    this.obscure = false,
    this.helperText,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 6),
        TextField(
          obscureText: obscure,

          decoration: InputDecoration(
            isDense: true,
            prefixIcon: Icon(icon, size: 18, color: const Color(0xFF757575)),
            hintText: hint,
            helperText: helperText,
            helperMaxLines: 2,
            helperStyle: const TextStyle(
              color: const Color(0xFF757575),
              fontSize: 10,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 1.50,
            ),
            hintStyle: const TextStyle(fontSize: 14, color: Colors.black),
            filled: true,
            fillColor: const Color(0xFFF5F5F5),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 16,
            ),
          ),
        ),
      ],
    );
  }
}
