import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    this.backButton,
  }) : super(key: key);

  final Widget? backButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: backButton,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(IconlyLight.location),
          const SizedBox(width: 10),
          Text(
            '15/2 New Texas',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            IconlyBold.notification,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
