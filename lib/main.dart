import 'package:flutter/material.dart';
import 'package:site_galleria/details_screen/details_screen.dart';

void main() {
  runApp(const SiteGalleria());
}

class SiteGalleria extends StatelessWidget {
  const SiteGalleria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xff181824)),
      debugShowCheckedModeBanner: false,
      home: const DetailsScreen(),
    );
  }
}
