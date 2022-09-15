import 'package:flutter/material.dart';

import 'category_tile.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CategoryTile(
              name: 'Dress',
              coverImage: 'https://i.imgur.com/3MfSyOC.png',
              onTap: () {},
            ),
            CategoryTile(
              name: 'Shirt',
              coverImage: 'https://i.imgur.com/zECyjvJ.png',
              onTap: () {},
            ),
            CategoryTile(
              name: 'Pants',
              coverImage: 'https://i.imgur.com/Xa4ujnD.png',
              onTap: () {},
            ),
            CategoryTile(
              name: 'T-Shirts',
              coverImage: 'https://i.imgur.com/Q51B6cx.png',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
