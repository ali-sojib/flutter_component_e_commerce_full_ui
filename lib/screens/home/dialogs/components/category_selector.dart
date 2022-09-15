import 'package:flutter/material.dart';

import 'choice_category.dart';

class CategorySelector extends StatelessWidget {
  const CategorySelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Category',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ChoiceCategory(
                  onTap: () {},
                  name: 'New Arrival',
                  isActive: true,
                ),
                ChoiceCategory(
                  onTap: () {},
                  name: 'Top Trending',
                  isActive: false,
                ),
                ChoiceCategory(
                  onTap: () {},
                  name: 'Featured Products',
                  isActive: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
