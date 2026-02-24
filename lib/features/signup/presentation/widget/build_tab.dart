 import 'package:flutter/material.dart';
 class _BuildTab
  extends StatelessWidget {
   const _BuildTab
   ({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Container();
   }
 }
  Widget BuildTab(String label, bool isActive, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: isActive ? Colors.white : const Color(0xFFE0E0E0),
            borderRadius: BorderRadius.circular(26),
            boxShadow: isActive
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ]
                : [],
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: isActive
                  ? const Color(0xFFCF8307)
                  : const Color(0xFF757575),
            ),
          ),
        ),
      ),
    );
  }
