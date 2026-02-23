// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:math';

class CircleArrowButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double progress;
  final Widget child;

  const CircleArrowButton({
    super.key,
    required this.onPressed,
    required this.progress,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    const double size = 90;
    const double strokeWidth = 6;
    const double gap = 8;

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: const Size(size, size),
            painter: _CircleProgressPainter(
              progress: progress,
              strokeWidth: strokeWidth,
            ),
          ),

          Material(
            shape: const CircleBorder(),
            color: const Color(0xFFCF8307),
            child: InkWell(
              customBorder: const CircleBorder(),
              onTap: onPressed,
              child: SizedBox(
                width: size - (gap * 2) - strokeWidth,
                height: size - (gap * 2) - strokeWidth,
                child: child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CircleProgressPainter extends CustomPainter {
  final double progress;
  final double strokeWidth;

  _CircleProgressPainter({required this.progress, required this.strokeWidth});

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = (size.width / 2) - strokeWidth / 2;

    final backgroundPaint = Paint()
      ..color = const Color(0xFFFFDCA4)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    canvas.drawCircle(center, radius, backgroundPaint);

    final progressPaint = Paint()
      ..color = const Color(0xFFCF8307)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final sweepAngle = 2 * pi * progress;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
