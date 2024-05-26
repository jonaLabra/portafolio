import 'package:flutter/material.dart';
import 'package:portafolio/pages/home/desktop/home_desktop.dart';
import 'package:portafolio/pages/home/mobile/home_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const HomeViewMobile(),
      desktop: (_) => HomeViewDesktop(),
    );
  }
}
