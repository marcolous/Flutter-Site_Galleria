import 'package:flutter/material.dart';
import 'package:site_galleria/details_screen/widget/details_screen_app_bar.dart';
import 'package:site_galleria/details_screen/widget/details_screen_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: DetailsScreenAppBar(),
        body: DetailsScreenBody(),
      ),
    );
  }
}
