import 'package:flutter/material.dart';

import '../../../components/section_divider_title.dart';
import '../../../constants/app_defaults.dart';
import 'components/category_selector.dart';
import 'components/top_header_bottom_sheet.dart';

class FilterDialog extends StatelessWidget {
  const FilterDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppDefaults.padding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TopHeaderRow(),
            const Divider(),
            const SizedBox(height: 16),
            const CategorySelector(),
            // Pricing Slider
            Column(
              children: [
                const SectionDividerTitle(
                  title: 'Pricing',
                  buttonTitle: '\$500 - \$200',
                ),
                RangeSlider(
                  values: const RangeValues(50, 200),
                  onChanged: (v) {},
                  max: 400,
                ),
              ],
            ),
            // Distance
            Column(
              children: [
                const SectionDividerTitle(
                  title: 'Distance',
                  buttonTitle: '\$500 - \$200',
                ),
                RangeSlider(
                  values: const RangeValues(50, 300),
                  onChanged: (v) {},
                  max: 400,
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Action Button

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Apply Filter'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
