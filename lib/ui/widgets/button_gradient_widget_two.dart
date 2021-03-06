import 'package:flutter/material.dart';

class GragientButtonTwo extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const GragientButtonTwo({
    Key? key,
    this.borderRadius,
    this.width,
    this.height = 40.0,
    this.gradient = const LinearGradient(colors: [
      Color.fromARGB(255, 195, 186, 252),
      Color.fromARGB(255, 97, 209, 253)
    ]),
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(50);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onSurface: Colors.transparent,
          side: BorderSide(color: Colors.white.withOpacity(0), width: 0),
          elevation: 0,
          shadowColor: Color.fromARGB(255, 241, 196, 210),
          minimumSize: Size(114, 40),
          maximumSize: Size(248, 40),
          primary: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}
