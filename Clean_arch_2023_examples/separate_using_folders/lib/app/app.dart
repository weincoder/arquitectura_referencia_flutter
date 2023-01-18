import 'package:design_system_weincode/foundations/themes/weincode_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:separate_using_folders/config/providers/astronomy_daily_data_provider.dart';
import 'package:separate_using_folders/config/providers/pokemon_provider.dart';
import 'package:separate_using_folders/config/routes/app_routes.dart';
import 'package:separate_using_folders/ui/pages/home_page.dart';
import 'package:separate_using_folders/ui/pages/pokemon_page.dart';

import '../ui/pages/show_dayli_data.dart';

class CleanArchExampleSepareteUsingFolderApp extends ConsumerWidget {
  const CleanArchExampleSepareteUsingFolderApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ligthThemeWeincode,
      onGenerateRoute: (routeSetting) {
        switch (routeSetting.name) {
          case (AppRoutes.pokemon):
            return MaterialPageRoute(
                builder: ((context) => PokemonPage(
                      pokemonDetailList:
                          ref.watch(pokemonProvider).getAllPokemons(),
                    )));
          case (AppRoutes.astronomyDailyData):
            return MaterialPageRoute(
                builder: ((context) => ShowDayliDataPage(
                  astronomyDailyData: ref.watch(astronomyDailyDataProvider).getAstronomyDayliData(),
                    )));
          default:
            return MaterialPageRoute(builder: ((context) => const HomePage()));
        }
      },
    );
  }
}
