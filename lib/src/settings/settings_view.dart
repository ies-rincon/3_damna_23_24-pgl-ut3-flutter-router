import 'package:flutter/material.dart';

import 'settings_controller.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key, required this.controller});

  static const routeName = '/settings';

  final SettingsController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajustes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: DropdownButton<ThemeMode>(
          items: const [
            DropdownMenuItem(
              value: ThemeMode.system,
              child: Text('Tema del Sistema'),
            ),
            DropdownMenuItem(
              value: ThemeMode.light,
              child: Text('Modo claro'),
            ),
            DropdownMenuItem(
              value: ThemeMode.dark,
              child: Text('Modo oscuro'),
            )
          ],
          onChanged: controller.updateThemeMode,
          value: controller.themeMode,
        ),
      ),
    );
  }
}
