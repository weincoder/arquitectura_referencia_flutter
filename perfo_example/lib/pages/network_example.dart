import 'package:design_system_weincode/atoms/weincode_asset_image.dart';
import 'package:design_system_weincode/atoms/weincode_image.dart';
import 'package:design_system_weincode/atoms/weincode_separeted.dart';
import 'package:flutter/material.dart';
import 'package:perfo_example/config/providers/pokemon_provider.dart';
import 'package:perfo_example/pokemon/domain/models/pokemon/pokemon.dart';
import 'package:provider/provider.dart';

class NetworkExample extends StatelessWidget {
  const NetworkExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerPokemons = Provider.of<PokemonProvider>(context);
    return Scaffold(
        appBar: AppBar(title: const Text('Pokemon APP')),
        body: Center(
          child: Column(
            children: [
              Text(
                'Some Pokemons Names:',
                style: Theme.of(context).textTheme.headline2,
              ),
              const WeincodeImage(
                url: 'https://media.redadn.es/imagenes/dswii_90124.jpg',
                widthImage: 150,
                heightImage: 150,
              ),
              const WeincodeSepareted(nSepareted: 0.5),
              FutureBuilder<List<PokeDetail>>(
                future: providerPokemons.pokemonUseCase.getAllPokemons(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Container(
                      decoration: const BoxDecoration(color: Colors.amber),
                      height: 350,
                      child: ListView.separated(
                          separatorBuilder: (context, index) =>
                              const WeincodeSepareted(nSepareted: 0.2),
                          itemCount: snapshot.data!.length,
                          itemBuilder: ((context, index) {
                            PokeDetail pokeDetail = snapshot.data![index];
                            return Text(
                              pokeDetail.name,
                              style: Theme.of(context).textTheme.headline4,
                              textAlign: TextAlign.center,
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
          ),
        ));
  }
}
