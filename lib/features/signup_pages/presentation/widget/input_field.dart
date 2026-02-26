import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final IconData icon;
  final String label;
  final String hint;
  final bool obscure;
  final Widget? suffixIcon;

  final String? helperText;
  const InputField({
    required this.icon,
    required this.label,
    required this.hint,
    this.obscure = false,
    this.helperText,
    this.suffixIcon,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
     bool _obscurePassword = true;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 6),
        TextField(
          obscureText: widget.obscure,

          decoration: InputDecoration(
            isDense: true,
            suffixIcon: 
                       IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: const Color(0xFF757575),
                        ),
                        onPressed: () => setState(
                          () => _obscurePassword = !_obscurePassword,
                        ),
                      ),
            suffixIconConstraints: const BoxConstraints(
              minHeight: 40,
              minWidth: 40,
            ),
            prefixIcon: Icon(widget.icon, size: 18, color: const Color(0xFF757575)),
            hintText: widget.hint,
            helperText: widget.helperText,
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
