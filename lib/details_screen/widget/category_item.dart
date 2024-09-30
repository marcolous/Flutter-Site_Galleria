import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:site_galleria/core/utils/app_images.dart';
import 'package:site_galleria/core/utils/styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff1F2033),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: AppImages.image,
          ),
          const Gap(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '₹999.00',
                style: Styles.style26(context),
              ),
              Row(
                children: [
                  SizedBox(height: 25, child: AppImages.rate),
                  const Gap(5),
                  Text(
                    '4.95/5',
                    style: Styles.style20Bold(context),
                  ),
                ],
              ),
            ],
          ),
          const Gap(16),
          Text(
            'Marriage Timing Prediction',
            style: Styles.style18SemiBold(context),
          ),
          const Gap(4),
          Text(
            'Discover the perfect timing for your marriage through the guidance of Vedic Astrology and an advanced Al-ML model.',
            style: Styles.style16SemiBold(context),
          ),
          const Expanded(child: Gap(1)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(100, 70),
                  backgroundColor: const Color(0xff1F2033),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      'View',
                      style: Styles.style18SemiBold(context),
                    ),
                    const Gap(5),
                    SizedBox(
                      height: 20,
                      child: AppImages.view,
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xff7495E8), Color(0xff0C359E)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(175, 70),
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Purchase',
                        style: Styles.style18SemiBold(context),
                      ),
                      const Gap(5),
                      SizedBox(
                        height: 20,
                        child: AppImages.purchase,
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
