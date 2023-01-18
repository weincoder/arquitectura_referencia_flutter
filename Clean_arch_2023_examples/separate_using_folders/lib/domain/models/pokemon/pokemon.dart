// To parse this JSON data, do
//
//     final pokemon = pokemonFromJson(jsonString);

import 'dart:convert';

Pokemon pokemonFromJson(String str) => Pokemon.fromJson(json.decode(str));

String pokemonToJson(Pokemon data) => json.encode(data.toJson());

class Pokemon {
    Pokemon({
        required this.pokeDetails,
    });
    final List<PokeDetail> pokeDetails;

    factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        pokeDetails: List<PokeDetail>.from(json["results"].map((x) => PokeDetail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(pokeDetails.map((x) => x.toJson())),
    };
}

class PokeDetail {
    PokeDetail({
      required  this.name,
      required  this.url,
    });

    final String name;
    final String url;

    factory PokeDetail.fromJson(Map<String, dynamic> json) => PokeDetail(
        name: json["name"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
    };
}
