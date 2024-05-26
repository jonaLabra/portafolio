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
      urlImages:
          'https://firebasestorage.googleapis.com/v0/b/flutter-b13a9.appspot.com/o/vanglarWP%2FvanglarWP.png?alt=media&token=9862bfc1-09ee-4de7-9a53-2dfaccfcdd89',
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
      urlImages:
          'https://firebasestorage.googleapis.com/v0/b/flutter-b13a9.appspot.com/o/vanglarWP%2FjoinHome.png?alt=media&token=c0f743ca-3e77-4e92-8e8a-9d2b370525a4',
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
      urlImages:
          'https://firebasestorage.googleapis.com/v0/b/flutter-b13a9.appspot.com/o/vanglarWP%2Fchat.png?alt=media&token=0386ba9f-b255-4c6a-b255-3346bf5b2279',
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
      urlImages:
          'https://firebasestorage.googleapis.com/v0/b/flutter-b13a9.appspot.com/o/vanglarWP%2Fdashboard.png?alt=media&token=0d361331-cdb3-45a5-81e2-40bfe2154b66',
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
      urlImages:
          'https://firebasestorage.googleapis.com/v0/b/flutter-b13a9.appspot.com/o/vanglarWP%2Fterrible.png?alt=media&token=4f3fdd86-130a-4c03-9cbb-051925b57396',
      tecnology: [
        {FontAwesomeIcons.cloud: 'Firebase'},
        {FontAwesomeIcons.mobileScreen: 'Flutter'}
      ],
      findProject: [
        {FontAwesomeIcons.chrome: 'https://the-terrible-mezcal.web.app'}
      ]),
  Project(
      name: S().TextPortfolioProject,
      description: S().textExperienceProjectPortfolio,
      urlImages:
          'https://firebasestorage.googleapis.com/v0/b/flutter-b13a9.appspot.com/o/vanglarWP%2Fportafolio.png?alt=media&token=55835205-3794-4606-9ba9-dcd63cd1a380',
      tecnology: [
        {FontAwesomeIcons.cloud: 'Firebase'},
        {FontAwesomeIcons.mobileScreen: 'Flutter'}
      ],
      findProject: [
        {FontAwesomeIcons.chrome: '#'}
      ])
];
