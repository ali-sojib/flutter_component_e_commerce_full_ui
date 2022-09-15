import 'package:flutter/material.dart';

import '../../../components/network_image.dart';
import '../../../constants/constants.dart';

class ProductTileHorizontal extends StatelessWidget {
  const ProductTileHorizontal({
    Key? key,
    required this.name,
    required this.coverImage,
    required this.amount,
    required this.time,
  }) : super(key: key);

  final String name;
  final String coverImage;
  final double amount;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: AppDefaults.margin, vertical: AppDefaults.margin / 2),
      padding: const EdgeInsets.all(AppDefaults.padding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppDefaults.borderRadius,
        boxShadow: AppDefaults.boxShadows,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: NetworkImageWithLoader(
                coverImage,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(height: 5),
              Text('\$${amount.toInt()}',
                  style: Theme.of(context).textTheme.headline6)
            ],
          ),
          const Spacer(),
          Text(time, style: Theme.of(context).textTheme.caption),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}
