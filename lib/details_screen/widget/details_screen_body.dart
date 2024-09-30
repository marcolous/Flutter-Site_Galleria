import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:site_galleria/core/utils/no_bounce_scroll_behavior.dart';
import 'package:site_galleria/core/utils/styles.dart';
import 'package:site_galleria/details_screen/widget/categories_h_list_view.dart';
import 'package:site_galleria/details_screen/widget/custom_padding.dart';
import 'package:site_galleria/details_screen/widget/search_widget.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: NoBounceScrollBehavior(),
      child: ListView(
        children: [
          const Gap(12),
          CustomPadding(
            child: Text(
              'Browse our Premium Reports',
              style: Styles.style20Med(context),
            ),
          ),
          const Gap(24),
          const SearchWidget(),
          const Gap(24),
          const CategoriesHListView()
        ],
      ),
    );
  }
}

