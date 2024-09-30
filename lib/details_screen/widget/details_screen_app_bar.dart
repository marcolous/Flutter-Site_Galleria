import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:site_galleria/core/utils/app_images.dart';
import 'package:site_galleria/core/utils/styles.dart';

class DetailsScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const DetailsScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xff181824),
      actions: [
        const Gap(24),
        CustomAppBarIcon(
          onTap: () => Navigator.pop(context),
          child: AppImages.back,
        ),
        const Gap(20),
        Text('Premium Reports', style: Styles.style18SemiBold(context)),
        const Spacer(),
        CustomAppBarIcon(
          onTap: () {},
          child: AppImages.money,
        ),
        const Gap(20),
        CustomAppBarIcon(
          onTap: () {},
          child: AppImages.notification,
        ),
        const Gap(24),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomAppBarIcon extends StatelessWidget {
  const CustomAppBarIcon({super.key, required this.child, required this.onTap});

  final Widget child;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 30,
        height: 30,
        child: child,
      ),
    );
  }
}
