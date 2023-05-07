import 'package:flutter/material.dart';
import 'package:market_place_app/presentation/market_place_home.dart';
import 'package:market_place_app/themes/dark_theme/dark_theme.dart';
import 'package:market_place_app/themes/light_theme/light_theme.dart';
import 'package:market_place_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider()..initializeTheme(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (_, model, __) => MaterialApp(
        title: 'Market Place',
        debugShowCheckedModeBanner: false,
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: model.themeMode,
        home: const MarketPlaceHome(),
      ),
    );
  }
}
