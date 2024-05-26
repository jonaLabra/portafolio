// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hi! Im`
  String get textHi {
    return Intl.message(
      'Hi! Im',
      name: 'textHi',
      desc: '',
      args: [],
    );
  }

  /// `Jonathan Labra`
  String get textName {
    return Intl.message(
      'Jonathan Labra',
      name: 'textName',
      desc: '',
      args: [],
    );
  }

  /// `Mobile and web developer, with experience in multiplatform and native app development. \n I also have experience in front-end and back-end development`
  String get textHelloIntroduction {
    return Intl.message(
      'Mobile and web developer, with experience in multiplatform and native app development. \n I also have experience in front-end and back-end development',
      name: 'textHelloIntroduction',
      desc: '',
      args: [],
    );
  }

  /// `Skills`
  String get textSkills {
    return Intl.message(
      'Skills',
      name: 'textSkills',
      desc: '',
      args: [],
    );
  }

  /// `About Me`
  String get textAboutMe {
    return Intl.message(
      'About Me',
      name: 'textAboutMe',
      desc: '',
      args: [],
    );
  }

  /// `Projects`
  String get textProjects {
    return Intl.message(
      'Projects',
      name: 'textProjects',
      desc: '',
      args: [],
    );
  }

  /// `Summary`
  String get textSummary {
    return Intl.message(
      'Summary',
      name: 'textSummary',
      desc: '',
      args: [],
    );
  }

  /// `Experience`
  String get textExperience {
    return Intl.message(
      'Experience',
      name: 'textExperience',
      desc: '',
      args: [],
    );
  }

  /// `Projects Portfolio`
  String get TextPortfolioProject {
    return Intl.message(
      'Projects Portfolio',
      name: 'TextPortfolioProject',
      desc: '',
      args: [],
    );
  }

  /// `Vanglar Dashboard is a page that allows you to manage and view all the information that users capture from the Vanglar WP app, containing information tables, tracking, and exam results and reports.\n`
  String get textExperienceVanlgarDashboard {
    return Intl.message(
      'Vanglar Dashboard is a page that allows you to manage and view all the information that users capture from the Vanglar WP app, containing information tables, tracking, and exam results and reports.\n',
      name: 'textExperienceVanlgarDashboard',
      desc: '',
      args: [],
    );
  }

  /// `Vanglar is a company specialized in training and regulatory compliance (compliance).\n The application allows users to train through questionnaires, in addition to having different functions that allow collecting information such as reports through dynamic widgets such as capturing images from the camera and gallery, Location search with Google Map and Street View, QR code generation, and learning validation through certificates.`
  String get textEperienceVanglarWP {
    return Intl.message(
      'Vanglar is a company specialized in training and regulatory compliance (compliance).\n The application allows users to train through questionnaires, in addition to having different functions that allow collecting information such as reports through dynamic widgets such as capturing images from the camera and gallery, Location search with Google Map and Street View, QR code generation, and learning validation through certificates.',
      name: 'textEperienceVanglarWP',
      desc: '',
      args: [],
    );
  }

  /// `It is an application designed for subdivisions in which they can organize visits, events and obtain greater security for residents.\n`
  String get textExperienceJoinHome {
    return Intl.message(
      'It is an application designed for subdivisions in which they can organize visits, events and obtain greater security for residents.\n',
      name: 'textExperienceJoinHome',
      desc: '',
      args: [],
    );
  }

  /// `Application designed for real-time messages, connected through sockets where users can see connection status of other users.\n`
  String get textExperienceChatMessage {
    return Intl.message(
      'Application designed for real-time messages, connected through sockets where users can see connection status of other users.\n',
      name: 'textExperienceChatMessage',
      desc: '',
      args: [],
    );
  }

  /// `The terrible is a page designed for the sale and information of mezcal.\n`
  String get textExperienceTerrible {
    return Intl.message(
      'The terrible is a page designed for the sale and information of mezcal.\n',
      name: 'textExperienceTerrible',
      desc: '',
      args: [],
    );
  }

  /// `Platform to visualize my experience and knowledge in software development.\n`
  String get textExperienceProjectPortfolio {
    return Intl.message(
      'Platform to visualize my experience and knowledge in software development.\n',
      name: 'textExperienceProjectPortfolio',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
