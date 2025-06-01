import 'package:advicer/app/core/services/theme_service.dart';
import 'package:advicer/app/pages/advice/advice_page.dart';
import 'package:advicer/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeService(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
          themeMode:
              themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: const AdvicePage(),
        );
      },
    );
  }
}


/*
  State management using change notifier and consumer:
    User interacts (e.g., toggles theme)
          ⬇️
    ThemeService.toggleTheme() is called
          ⬇️
    isDarkModeOn is updated
          ⬇️
    notifyListeners() triggers UI rebuild
          ⬇️
    Consumer rebuilds MaterialApp with new theme


 */