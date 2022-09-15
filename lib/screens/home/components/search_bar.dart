import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../components/icon_with_background.dart';
import '../../../constants/constants.dart';
import '../dialogs/filter_dialog.dart';
import '../search_page.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onSubmitted: (v) {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SearchPage(searchedValue: v)));
        },
        decoration: InputDecoration(
            prefixIcon: const Icon(IconlyLight.search),
            labelText: 'Search items...',
            suffixIcon: IconWithBackground(
              iconData: IconlyLight.filter,
              color: AppColors.primary,
              iconColor: Colors.white,
              radius: const BorderRadius.all(Radius.circular(8)),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => const FilterDialog(),
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppDefaults.radius),
                      topRight: Radius.circular(AppDefaults.radius),
                    ),
                  ),
                );
              },
            )),
      ),
    );
  }
}
