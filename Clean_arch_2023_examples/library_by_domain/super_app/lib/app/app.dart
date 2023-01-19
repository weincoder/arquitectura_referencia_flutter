import 'package:album/ui/pages/album_page.dart';
import 'package:astronomy_daily_data/ui/pages/show_dayli_data.dart';

import 'package:design_system_weincode/foundations/themes/weincode_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon/ui/pages/pokemon_page.dart';
import 'package:super_app/config/providers/album_provider.dart';

import '../config/providers/astronomy_daily_data_provider.dart';
import '../config/providers/pokemon_provider.dart';
import '../config/routes/app_routes.dart';
import '../ui/pages/home_page.dart';




class CleanArchExampleLibraryByDomainApp extends ConsumerWidget {
  const CleanArchExampleLibraryByDomainApp({super.key});

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
                builder: ((context) => ShowDailyDataPage(
                  astronomyDailyData: ref.watch(astronomyDailyDataProvider).getAstronomyDailyData(),
                    )));
          case (AppRoutes.album):
            return MaterialPageRoute(builder: ((context) => AlbumPage(albumList: ref.watch(albumProvider).getAll())));
          default:
            return MaterialPageRoute(builder: ((context) => const HomePage()));
        }
      },
    );
  }
}
