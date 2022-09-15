import 'package:flutter/material.dart';

import '../constants/constants.dart';

class IconWithBackground extends StatelessWidget {
  const IconWithBackground({
    Key? key,
    required this.iconData,
    this.color,
    this.iconColor,
    this.onTap,
    this.size,
    this.radius,
  }) : super(key: key);

  final IconData iconData;
  final Color? color;
  final Color? iconColor;
  final double? size;
  final void Function()? onTap;
  final BorderRadiusGeometry? radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: radius ?? const BorderRadius.all(Radius.circular(8.0)),
        color: color ?? AppColors.primary.withOpacity(0.1),
        child: InkWell(
          onTap: onTap,
          borderRadius: AppDefaults.borderRadius,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              iconData,
              color: iconColor ?? AppColors.primary,
              size: size,
            ),
          ),
        ),
      ),
    );
  }
}
