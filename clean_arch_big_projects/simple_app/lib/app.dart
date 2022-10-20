import 'package:design_system_weincode/foundations/themes/weincode_themes.dart';
import 'package:domain_wc/domain_wc.dart';
import 'package:flutter/material.dart';
import 'package:infraestructure_wc/infraestructure_wc.dart';
import 'package:provider/provider.dart';
import 'package:simple_app/pages/home.dart';

import 'config/provider/pokemon_provider.dart';

class SimpleApp extends StatelessWidget {
  const SimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) =>
                PokemonProvider(pokemonUseCase: PokemonUseCase(PokemonApi())))
      ],
      child: MaterialApp(
        theme: ligthThemeWeincode,
        home: const Home(),
      ),
    );
  }
}
