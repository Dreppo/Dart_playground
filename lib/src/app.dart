import 'package:apps_playground/src/features/impopar/presentation/impopar.dart';
import 'package:apps_playground/src/features/insanelybutton/presentation/insanely_button_page.dart';
import 'package:flutter/material.dart';

import 'features/home/presentation/home_page.dart';
import 'features/inputs/presentation/inputs_page.dart';
import 'features/sounds/presentation/sounds_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const HomePage(),
        '/sounds': (_) => const SoundsPage(),
        '/insanebutton': (_) => const InsanelyButtonPage(),
        '/impopar': (_) => const ImpoParPage(),
        '/inputs': (_) => const InputsPage(),
      },
    );
  }
}
