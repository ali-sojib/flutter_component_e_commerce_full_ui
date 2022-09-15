import 'package:flutter/material.dart';

import '../../../components/network_image.dart';
import '../../../components/icon_with_background.dart';
import '../../../constants/constants.dart';

class ProductTileCart extends StatelessWidget {
  const ProductTileCart({
    Key? key,
    required this.name,
    required this.coverImage,
    required this.price,
    required this.quantity,
    this.increaseQuantity,
    this.decreaseQuantity,
  }) : super(key: key);

  final String name;
  final String coverImage;
  final double price;
  final int quantity;
  final void Function()? increaseQuantity;
  final void Function()? decreaseQuantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppDefaults.margin,
        vertical: AppDefaults.margin / 2,
      ),
      padding: const EdgeInsets.all(AppDefaults.padding),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: AppDefaults.borderRadius),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 80,
              width: 80,
              child: NetworkImageWithLoader(
                coverImage,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: Theme.of(context).textTheme.caption),
                  const SizedBox(height: 5),
                  Text('\$${price.toInt()}',
                      style: Theme.of(context).textTheme.bodyText1)
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: IconWithBackground(
                    iconData: Icons.add,
                    size: 16,
                    onTap: increaseQuantity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Text('$quantity'),
                ),
                Expanded(
                  child: IconWithBackground(
                    iconData: Icons.remove,
                    size: 16,
                    onTap: decreaseQuantity,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
