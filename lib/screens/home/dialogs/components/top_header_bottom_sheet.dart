import 'package:flutter/material.dart';

class TopHeaderRow extends StatelessWidget {
  const TopHeaderRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(onPressed: () {}, child: const Text('Clear')),
        Text(
          'Filters',
          style: Theme.of(context).textTheme.headline6,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.black12,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            iconSize: 18,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
            ),
            constraints: const BoxConstraints(),
          ),
        ),
      ],
    );
  }
}
