// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:portafolio/generated/l10n.dart';
import 'package:portafolio/providers/painter_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:portafolio/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChangePages())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Portafolio',
        initialRoute: 'home',
        routes: app_routes,
        supportedLocales: S.delegate.supportedLocales,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
      ),
    );
  }
}
