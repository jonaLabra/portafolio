import 'package:flutter/material.dart';
import 'package:portafolio/pages/home.dart';

// ignore: non_constant_identifier_names
final Map<String, Widget Function(BuildContext)> app_routes = {
  'home': (_) => const HomePage(),
};
