import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    Key? key,
    required this.gradient,
    this.textStyle,
  }) : super(key: key);

  final LinearGradient gradient;
  final TextStyle? textStyle;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) => gradient.createShader(
        Rect.fromLTWH(0.0, 0.0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: textStyle != null
            ? textStyle?.copyWith(color: Colors.white)
            : TextStyle(
                color: Colors.white,
                //height other than 1 results in artifacts
                height: 1,
              ),
      ),
    );
  }
}
