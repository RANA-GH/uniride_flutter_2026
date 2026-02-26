import 'package:flutter/material.dart';
class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle(this.title);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Color(0xFFCF8307),
        fontSize: 16,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        height: 1,
      ),
    );
  }
}
