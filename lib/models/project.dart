import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portafolio/generated/l10n.dart';

class Project {
  String? name;
  String? description;
  String? urlImages;
  List<Map<IconData, String>>? tecnology;
  List<Map<IconData, String>>? findProject;

  Project(
      {required this.name,
      required this.description,
      required this.urlImages,
      required this.tecnology,
      required this.findProject});
}

List<Project> projectsExperienceApp = [
  Project(
      name: 'Vanglar WP',
      description: S().textEperienceVanglarWP,
      urlImages: 'images/vanglarWP.png',
      tecnology: [
        {FontAwesomeIcons.cloud: 'Firebase'},
        {FontAwesomeIcons.mobileScreen: 'Flutter'}
      ],
      findProject: [
        {
          FontAwesomeIcons.googlePlay:
              'https://play.google.com/store/apps/details?id=com.vanglar.vanglar_flutter'
        },
        {
          FontAwesomeIcons.appStore:
              'https://apps.apple.com/mx/app/vanglar-wp/id1570157235'
        }
      ]),
  Project(
      name: 'JoinHome',
      description: S().textExperienceJoinHome,
      urlImages: 'images/joinHome.png',
      tecnology: [
        {FontAwesomeIcons.laravel: 'Laravel'},
        {FontAwesomeIcons.mobileScreen: 'Flutter'}
      ],
      findProject: [
        {
          FontAwesomeIcons.googlePlay:
              'https://play.google.com/store/apps/details?id=com.joinallapps.joinhome'
        },
        {
          FontAwesomeIcons.appStore:
              'https://apps.apple.com/mx/app/joinhome/id6462944758'
        }
      ]),
  Project(
      name: 'ChatmMessage',
      description: S().textExperienceChatMessage,
      urlImages: 'images/chat.png',
      tecnology: [
        {
          FontAwesomeIcons.nodeJs: 'Node JS',
        },
        {FontAwesomeIcons.cloud: 'Mogo DB'},
        {FontAwesomeIcons.mobileScreen: 'Flutter'}
      ],
      findProject: [
        {
          FontAwesomeIcons.github:
              'https://github.com/jonaLabra/flutter-chat-app'
        }
      ])
];

List<Project> projectsExperienceWeb = [
  Project(
      name: 'Vanglar Dashboard',
      description: S().textExperienceVanlgarDashboard,
      urlImages: 'images/dashboard.png',
      tecnology: [
        {FontAwesomeIcons.vuejs: 'Vue JS'},
        {FontAwesomeIcons.nodeJs: 'Node JS'},
        {FontAwesomeIcons.cloud: 'Firebase'},
      ],
      findProject: [
        {
          FontAwesomeIcons.chrome:
              'https://vanglar-dashboard-prod.firebaseapp.com/'
        }
      ]),
  Project(
      name: 'The Terrible',
      description: S().textExperienceTerrible,
      urlImages: 'images/terrible.png',
      tecnology: [
        {FontAwesomeIcons.cloud: 'Firebase'},
        {FontAwesomeIcons.mobileScreen: 'Flutter'}
      ],
      findProject: [
        {FontAwesomeIcons.chrome: 'www.google.com'}
      ]),
  Project(
      name: S().TextPortfolioProject,
      description: S().textExperienceProjectPortfolio,
      urlImages: 'images/portafolio.png',
      tecnology: [
        {FontAwesomeIcons.cloud: 'Firebase'},
        {FontAwesomeIcons.mobileScreen: 'Flutter'}
      ],
      findProject: [
        {FontAwesomeIcons.chrome: '#'}
      ])
];
