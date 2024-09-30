import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:site_galleria/details_screen/widget/category.dart';

class CategoriesVListView extends StatelessWidget {
  const CategoriesVListView({super.key});
  static List<String> categories = [
    'Marriage',
    'Career',
    'Family',
    'Health',
    'Business',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: categories.length,
      separatorBuilder: (context, index) => const Gap(24),
      itemBuilder: (context, index) => Category(title: categories[index]),
    );
  }
}