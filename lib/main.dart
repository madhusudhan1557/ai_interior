import 'package:ai_interior/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';

void main() {
  runApp(InteriorApp(
    router: AppRouter(),
  ));
}

class InteriorApp extends StatelessWidget {
  final AppRouter router;
  const InteriorApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      localizationsDelegates: const [
        // delegate from flutter_localization
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        // delegate from localization package.
        SfGlobalLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ne'),
        Locale('ja'),
      ],
      theme: ThemeData(
        useMaterial3: true,
      ),
      locale: const Locale('en'),
      title: "Interior Design",
      onGenerateRoute: router.onGenerateRoute,
    );
  }
}
