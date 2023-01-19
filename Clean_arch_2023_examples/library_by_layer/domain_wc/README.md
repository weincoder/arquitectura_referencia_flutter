# Description
The models and the use cases about PokemonApi

## Features

- PokemonGateway
- Pokemon
- PokemonUseCase


## Getting started

pub get 

## Usage

A little example
```dart
import 'package:domain_wc/domain_wc.dart';

void main() {
  var awesome = Pokemon(
      count: 1,
      next: '2',
      previous: '0',
      pokeDetails: [PokeDetail(name: 'Fake pokemon', url: 'fakeurl')]);
  print('awesome: ${awesome.count}');
}
```

## Additional information
This is an example package used to explain the clean architecture.
