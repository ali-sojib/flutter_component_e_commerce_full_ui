import 'package:flutter/material.dart';

import '../../../components/network_image.dart';
import '../../../constants/constants.dart';

class SocialIconButton extends StatelessWidget {
  const SocialIconButton({
    Key? key,
    required this.onTap,
    required this.logoLink,
  }) : super(key: key);
  final void Function() onTap;
  final String logoLink;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      focusColor: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(AppDefaults.padding),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              offset: const Offset(5, 4),
              color: const Color(0x0ff33333).withOpacity(0.05),
            )
          ],
        ),
        child: CircleAvatar(
          child: NetworkImageWithLoader(logoLink),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
