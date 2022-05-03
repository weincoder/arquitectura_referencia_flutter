import 'package:flutter/material.dart';
import 'package:poke_api/config/provider/pokemon_provider.dart';
import 'package:poke_api/domain/models/pokemon/pokemon.dart';
import 'package:provider/provider.dart';

class HomePoke extends StatelessWidget {
  const HomePoke({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerPokemons = Provider.of<PokemonProvider>(context);
    return Scaffold(
        appBar: AppBar(title: const Text('Pokemon APP')),
        body: FutureBuilder<List<PokeDetail>>(
          future: providerPokemons.pokemonUseCase.getAllPokemons(),
          builder: (context, snapshot)  {
            if (snapshot.hasData){
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: ((context, index) {
                PokeDetail pokeDetail = snapshot.data![index];
                return Text(pokeDetail.name);
              }));
            } else if(snapshot.hasError){
              return Text('${snapshot.hasError}');
            }
            return const Center(
              child: SizedBox(width:20, height: 20, child:CircularProgressIndicator())
            );
          },
        ));
  }
}
