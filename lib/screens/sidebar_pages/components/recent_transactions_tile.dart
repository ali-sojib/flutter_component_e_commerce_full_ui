import 'package:flutter/material.dart';

import '../../../components/network_image.dart';
import '../../../constants/constants.dart';

class RecentTransactionTile extends StatelessWidget {
  const RecentTransactionTile({
    Key? key,
    required this.name,
    required this.date,
    required this.amount,
    required this.coverImage,
  }) : super(key: key);

  final String name;
  final String date;
  final double amount;
  final String coverImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: AppDefaults.borderRadius,
        side: BorderSide.none,
      ),
      shadowColor: Colors.black.withOpacity(0.3),
      color: Colors.white,
      child: ListTile(
        visualDensity: const VisualDensity(horizontal: 4),
        leading: SizedBox(
          width: 80,
          height: 80,
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: NetworkImageWithLoader(coverImage),
          ),
        ),
        title: Text(name),
        subtitle: Text(date),
        trailing: Text(
          '\$${amount.toInt()}',
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
