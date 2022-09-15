import 'package:flutter/material.dart';

import '../../constants/app_defaults.dart';
import 'components/categories_list.dart';
import 'components/home_header.dart';
import 'components/home_new_arrival_section.dart';
import 'components/search_bar.dart';
import 'components/title_and_subtitle.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    this.backButton,
  }) : super(key: key);

  final Widget? backButton;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(backButton: backButton),
            const SizedBox(height: AppDefaults.margin / 2),
            const TitleAndSubtitle(),
            const SizedBox(height: AppDefaults.margin / 2),
            const SearchBar(),
            const SizedBox(height: AppDefaults.margin / 2),
            const CategoriesList(),
            const SizedBox(height: AppDefaults.margin / 2),
            const NewArrivalSection(),
          ],
        ),
      ),
    );
  }
}
