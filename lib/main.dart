import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:qoraan_app/cora/utilites/colors_app.dart';
import 'package:qoraan_app/root_page.dart';

import 'features/home/presentation/home_page.dart';
import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   debugShowCheckedModeBanner: false,
      locale: Locale('ar'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Test ManageMent',
      theme: ThemeData(
          canvasColor: ColorsApp.pink,

          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: ColorsApp.pink,
          )),
      home:  RootHomePage(),
    );
  }
}


