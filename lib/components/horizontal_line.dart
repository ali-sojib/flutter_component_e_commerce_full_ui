import 'package:flutter/material.dart';

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({
    Key? key,
    required this.width,
    this.thickness = 1,
  }) : super(key: key);

  final double width;
  final double thickness;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: thickness,
      color: Colors.grey,
    );
  }
}
