import 'package:design_system_weincode/foundations/themes/weincode_themes.dart';
import 'package:flutter/material.dart';
import 'package:perfo_example/config/providers/pokemon_provider.dart';
import 'package:perfo_example/config/routes/app_routes.dart';
import 'package:perfo_example/pages/high_perfo.dart';
import 'package:perfo_example/pages/home.dart';
import 'package:perfo_example/pages/low_perfo.dart';
import 'package:perfo_example/pages/network_example.dart';
import 'package:perfo_example/pokemon/domain/use_case/pokemon/pokemon_use_case.dart';
import 'package:perfo_example/pokemon/infraestructure/driven_adapter/api/pokemon_api/pokemon_api.dart';
import 'package:provider/provider.dart';

class PerfoExampleApp extends StatelessWidget {
  const PerfoExampleApp({Key? key}) : super(key: key);

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
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case (AppRoutes.highPerfo):
              return MaterialPageRoute(
                  builder: (context) => const HighPerfoPage());
            case (AppRoutes.lowPerfo):
              return MaterialPageRoute(
                  builder: (context) => const LowPerfoPage());
            case (AppRoutes.networkExample):
              return MaterialPageRoute(
                  builder: (context) => const NetworkExample());
            default:
              return MaterialPageRoute(builder: (context) => const HomePage());
          }
        },
      ),
    );
  }
}
