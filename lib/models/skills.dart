import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Skill {
  String? name;
  IconData? icon;
  double? percent;

  Skill({required this.name, required this.icon, required this.percent});
}

List<Skill> skills = [
  Skill(name: 'HTML', icon: FontAwesomeIcons.html5, percent: 0.80),
  Skill(name: 'JS', icon: FontAwesomeIcons.js, percent: 0.60),
  Skill(name: 'PHP', icon: FontAwesomeIcons.php, percent: 0.50),
  Skill(name: 'CSS', icon: FontAwesomeIcons.css3, percent: 0.50),
  Skill(name: 'BOOTSTRAP', icon: FontAwesomeIcons.bootstrap, percent: 0.50),
  Skill(name: 'NODEJS', icon: FontAwesomeIcons.nodeJs, percent: 0.60),
  Skill(name: 'VUEJS', icon: FontAwesomeIcons.vuejs, percent: 0.60),
  Skill(name: 'LARAVEL', icon: FontAwesomeIcons.laravel, percent: 0.60),
  Skill(name: 'C#', icon: FontAwesomeIcons.c, percent: 0.60),
  Skill(name: 'JAVA', icon: FontAwesomeIcons.java, percent: 0.60),
  Skill(name: 'FLUTTER', icon: FontAwesomeIcons.mobile, percent: 0.90),
  Skill(name: 'ANDROID', icon: FontAwesomeIcons.android, percent: 0.75),
  Skill(name: 'FIREBASE', icon: FontAwesomeIcons.cloud, percent: 0.85),
  Skill(name: 'MYSQL', icon: FontAwesomeIcons.database, percent: 0.60),
];
