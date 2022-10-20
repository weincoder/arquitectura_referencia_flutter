import 'package:design_system_weincode/atoms/weincode_separeted.dart';
import 'package:domain_wc/domain_wc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../config/provider/pokemon_provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final providerPokemons = Provider.of<PokemonProvider>(context);
    return Scaffold(
        appBar: AppBar(title: const Text('List of Pokemons')),
        body: Column(
          children: [
            const WeincodeSepareted(nSepareted: 1.0),
            Text(
              'Pokemons List',
              style: Theme.of(context).textTheme.headline1,
            ),
            const WeincodeSepareted(nSepareted: 1.0),
            FutureBuilder<List<PokeDetail>>(
              future: providerPokemons.pokemonUseCase.getAllPokemons(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    decoration: const BoxDecoration(color: Colors.black12),
                    height: 350.0,
                    child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: ((context, index) {
                          PokeDetail pokeDetail = snapshot.data![index];
                          return Text(
                            pokeDetail.name,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline3,
                          );
                        })),
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.hasError}');
                }
                return const Center(
                    child: SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator()));
              },
            ),
          ],
        ));
  }
}
