import 'package:flutter/material.dart';

class ClipPad extends CustomClipper<RRect> {
  const ClipPad({
    this.padding = EdgeInsets.zero,
    required this.radius,
  });

  final EdgeInsets padding;
  final Radius radius;

  @override
  RRect getClip(Size size) => RRect.fromRectAndRadius(
        padding.inflateRect(Offset.zero & size),
        radius,
      );

  @override
  bool shouldReclip(ClipPad oldClipper) => oldClipper.padding != padding;
}
