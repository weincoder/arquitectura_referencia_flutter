import 'package:flutter/material.dart';
import '../../domain/models/pokemon/pokemon.dart';

class PokemonPage extends StatelessWidget {
  final Future<List<PokeDetail>> pokemonDetailList;
  const PokemonPage( {Key? key, required this.pokemonDetailList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Pokemon 🐬')),
        body: FutureBuilder<List<PokeDetail>>(
          future: pokemonDetailList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: ((context, index) {
                      PokeDetail pokeDetail = snapshot.data![index];
                      return ListTile(
                        leading: const Icon(Icons.people),
                        title: Text(pokeDetail.name),
                      );
                    })),
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.hasError}');
            }
            return const Center(
                child: SizedBox(
                    width: 20, height: 20, child: CircularProgressIndicator()));
          },
        ));
  }
}
