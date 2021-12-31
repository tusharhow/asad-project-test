import 'package:flutter/material.dart';

class CircleShapeComponent extends StatelessWidget {
  const CircleShapeComponent({
    Key? key,
    required this.rightPosition,
    required this.topPosition,
    required this.height,
    required this.width,
  }) : super(key: key);
  final double rightPosition;
  final double topPosition;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: rightPosition,
      top: topPosition,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white24,
            width: 1,
          ),
        ),
      ),
    );
  }
}
