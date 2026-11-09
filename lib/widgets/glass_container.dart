import 'dart:ui';
import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double blur;
  final double borderRadius;
  final Widget child;

  const GlassContainer({
    super.key,
    this.width,
    this.height,
    this.blur = 15.0,
    this.borderRadius = 24.0,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.08),
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: Colors.white.withOpacity(0.15),
              width: 1.5,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}