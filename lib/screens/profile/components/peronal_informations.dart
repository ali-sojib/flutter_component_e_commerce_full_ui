import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import 'info_row.dart';

class PeronalInformations extends StatelessWidget {
  const PeronalInformations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefaults.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Personal Information',
            style: Theme.of(context).textTheme.headline6,
          ),
          const Divider(),
          const InfoRow(field: 'Name:', value: 'Chris Harison'),
          const InfoRow(field: 'Email:', value: 'chris@gmail.com'),
          const InfoRow(field: 'Location:', value: 'San Diego'),
          const InfoRow(field: 'Zip Code:', value: '1200'),
          const InfoRow(field: 'Phone Number:', value: '(+1) 5484 4757 84'),
        ],
      ),
    );
  }
}
