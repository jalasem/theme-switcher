import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen.dart';
import 'theme/theme_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeModel(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      // Use Consumer to access ThemeProvider
      builder: (context, theme, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const HomeScreen(),
            theme: theme.themeMode, // Ensure darkMode is defined
            routes: {
              '/home': (context) => const HomeScreen(),
            });
      },
    );
  }
}
