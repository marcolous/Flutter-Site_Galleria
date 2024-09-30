import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:site_galleria/core/utils/app_images.dart';
import 'package:site_galleria/core/utils/styles.dart';
import 'package:site_galleria/details_screen/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: -300,
            child: CustomPaint(
              size: const Size(700, 950),
              painter: ConcentricCirclesPainter(),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(height: 230, child: AppImages.circle1),
          ),
          buildPositionedIconAndLabel(
              'Business', AppImages.business, pi / 3, 180, context),
          buildPositionedIconAndLabel(
              'Career', AppImages.career, pi / 4, 350, context),
          buildPositionedIconAndLabel(
              'Marriage', AppImages.marriage, pi / 3.3, 550, context),
          buildPositionedIconAndLabel(
              'Family', AppImages.family, pi / 2.6, 690, context),
          buildPositionedIconAndLabel(
              'Health', AppImages.health, pi / 2.2, 750, context),
        ],
      ),
    );
  }

  Widget buildPositionedIconAndLabel(String label, Widget image, double angle,
      double radius, BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..translate(
          radius * cos(angle),
          radius * sin(angle),
        ),
      child: GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailsScreen(),
            )),
        child: Row(
          children: [
            SizedBox(
              child: CircleAvatar(
                radius: 35,
                backgroundColor: const Color(0xff3D3F6D).withOpacity(.3),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: image,
                ),
              ),
            ),
            const Gap(10),
            Text(
              label,
              style: Styles.style16SemiBold(context).copyWith(
                color: const Color(0xff7495E8),
                fontFamily: 'Philosopher',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ConcentricCirclesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white.withOpacity(0.2)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    double radiusStep = 50;
    for (double i = radiusStep; i <= size.width / 2; i += radiusStep) {
      canvas.drawCircle(Offset(size.width / 2, size.height / 2), i, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
