import 'package:flutter/material.dart';
import 'package:poke_api/config/provider/pokemon_provider.dart';
import 'package:poke_api/domain/use_case/pokemon/pokemon_use_case.dart';
import 'package:poke_api/infraestructure/driven_adapter/api/pokemon_api/pokemon_api.dart';
import 'package:poke_api/ui/screens/home_poke.dart';
import 'package:provider/provider.dart';

class PokeApp extends StatelessWidget {
  const PokeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) =>
                PokemonProvider(pokemonUseCase: PokemonUseCase(PokemonApi())))
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePoke(),
      ),
    );
  }
}
