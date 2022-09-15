import 'package:flutter/material.dart';

import '../../../components/network_image.dart';
import '../../../constants/constants.dart';

class PaymentMethodCard extends StatelessWidget {
  const PaymentMethodCard({
    Key? key,
    this.methodID,
    required this.icon,
    required this.isSelected,
    this.onTap,
  }) : super(key: key);

  /// Used for recognizing the method
  final String? methodID;
  final String icon;
  final bool isSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: AppDefaults.borderRadius,
          boxShadow: [
            BoxShadow(
                blurRadius: 9,
                offset: const Offset(4, 7),
                color: Colors.black.withOpacity(0.03))
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: 60,
                height: 40,
                child: AspectRatio(
                  aspectRatio: 3 / 4,
                  child: NetworkImageWithLoader(
                    icon,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            if (isSelected)
              const Positioned(
                right: 0,
                top: 0,
                child: Icon(
                  Icons.check_circle_rounded,
                  color: Colors.green,
                ),
              )
          ],
        ),
      ),
    );
  }
}
