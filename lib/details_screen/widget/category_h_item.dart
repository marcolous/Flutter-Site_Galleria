import 'package:flutter/material.dart';
import 'package:site_galleria/core/utils/styles.dart';

class CategoryHItem extends StatelessWidget {
  const CategoryHItem({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,
  });
  final String title;
  final bool isActive;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          border: isActive
              ? const Border(
                  bottom: BorderSide(
                    color: Color(0xff0C359E),
                    width: 3,
                  ),
                )
              : const Border(),
        ),
        child: Text(
          title,
          style: Styles.style18(context),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
