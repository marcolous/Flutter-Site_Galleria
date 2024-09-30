import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:site_galleria/home_screen/home_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const SiteGalleria(),
    ),
  );
  // runApp(const SiteGalleria());
}

class SiteGalleria extends StatelessWidget {
  const SiteGalleria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xff181824)),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
