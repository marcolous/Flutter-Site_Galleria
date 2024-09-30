
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:site_galleria/core/utils/styles.dart';
import 'package:site_galleria/details_screen/widget/category_item.dart';
import 'package:site_galleria/details_screen/widget/custom_padding.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomPadding(
          child: Text(
            title,
            style: Styles.style22SemiBold(context),
          ),
        ),
        const Gap(15),
        SizedBox(
          height: 530,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            separatorBuilder: (context, index) => const Gap(20),
            itemBuilder: (context, index) => const CategoryItem(),
          ),
        )
      ],
    );
  }
}

