import 'package:design_system_weincode/foundations/themes/weincode_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_app/pages/home.dart';

import 'config/provider/pokemon_provider.dart';

class SimpleApp extends ConsumerWidget {
  const SimpleApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ligthThemeWeincode,
      home: Home(pokemonsList: ref.watch(pokemonProvider).getAllPokemons()),
    );
  }
}
