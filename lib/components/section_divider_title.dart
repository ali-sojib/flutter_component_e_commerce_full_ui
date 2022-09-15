import 'package:flutter/material.dart';

import '../constants/constants.dart';

class SectionDividerTitle extends StatelessWidget {
  const SectionDividerTitle({
    Key? key,
    required this.title,
    this.buttonTitle,
    this.onTap,
  }) : super(key: key);

  final String title;
  final String? buttonTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDefaults.margin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          TextButton(
              onPressed: onTap,
              child: Text(
                buttonTitle ?? 'See All',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: Colors.grey),
              ))
        ],
      ),
    );
  }
}
