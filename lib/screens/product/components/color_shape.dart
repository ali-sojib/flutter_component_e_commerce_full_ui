import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class ColorChooser extends StatelessWidget {
  const ColorChooser({
    Key? key,
    required this.isSelected,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  final bool isSelected;
  final Color color;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(4),
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            border: Border.all(
              color: isSelected ? AppColors.primary : Colors.transparent,
            ),
            shape: BoxShape.circle,
          ),
          child: Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
