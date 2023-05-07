import 'package:flutter/material.dart';
import 'package:market_place_app/presentation/settings/theme_tile.dart';
import 'package:market_place_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: Consumer<ThemeProvider>(
        builder: (_, model, __) => Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Semantics(
              label: 'Theme Mode Options',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Semantics(
                    label: "Theme Mode",
                    header: true,
                    child: Text(
                      "Theme Mode",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  ThemeTile(
                    label: "System",
                    isSelected: model.themeMode == ThemeMode.system,
                    onSelected: () => model.updateThemeMode(ThemeMode.system),
                  ),
                  ThemeTile(
                    label: "Light",
                    isSelected: model.themeMode == ThemeMode.light,
                    onSelected: () => model.updateThemeMode(ThemeMode.light),
                  ),
                  ThemeTile(
                    label: "Dark",
                    isSelected: model.themeMode == ThemeMode.dark,
                    onSelected: () => model.updateThemeMode(ThemeMode.dark),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
