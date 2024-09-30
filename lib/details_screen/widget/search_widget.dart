import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:site_galleria/core/utils/app_images.dart';
import 'package:site_galleria/core/utils/styles.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle hintStyle = Styles.style18Reg(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.symmetric(horizontal: 24),
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xff1F2033),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 25,
            height: 25,
            child: AppImages.search,
          ),
          const Gap(15),
          Expanded(
            child: TextField(
              style: hintStyle,
              decoration: InputDecoration(
                hintText: 'Search Marriage, career, etc.,',
                hintStyle: hintStyle,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
