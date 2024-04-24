import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/box.dart';
import '../components/button.dart';
import '../theme/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
            child: MyBox(
          color: Theme.of(context).colorScheme.secondary,
          child: MyButton(
              color: Theme.of(context).colorScheme.primary,
              onTap: () {
                Provider.of<ThemeModel>(context, listen: false).toggleTheme();
              }),
        )));
  }
}
