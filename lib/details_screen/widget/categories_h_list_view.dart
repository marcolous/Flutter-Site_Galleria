import 'package:flutter/material.dart';
import 'package:site_galleria/details_screen/widget/category_h_item.dart';

class CategoriesHListView extends StatefulWidget {
  const CategoriesHListView({super.key});

  @override
  State<CategoriesHListView> createState() => _CategoriesHListViewState();
}

class _CategoriesHListViewState extends State<CategoriesHListView> {
  int activeIndex = 0;
  static List<String> categories = [
    'Business',
    'Career',
    'Marriage',
    'Family',
    'Health',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => CategoryHItem(
          title: categories[index],
          isActive: index == activeIndex,
          onTap: () {
            setState(() {
              activeIndex = index;
            });
          },
        ),
      ),
    );
  }
}

