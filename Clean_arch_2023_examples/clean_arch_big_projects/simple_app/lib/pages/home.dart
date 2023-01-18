import 'package:design_system_weincode/atoms/weincode_separeted.dart';
import 'package:domain_wc/domain_wc.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final Future<List<PokeDetail>> pokemonsList;
  const Home({super.key, required this.pokemonsList});

  @override
  Widget build(BuildContext context) {
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
              future: pokemonsList,
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
