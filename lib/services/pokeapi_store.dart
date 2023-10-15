import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_app/const/const_api.dart';
import 'package:pokedex_app/models/pokeapi.dart';
part 'pokeapi_store.g.dart';

class PokeApiStore = PokeApiStoreBase with $PokeApiStore;

abstract class PokeApiStoreBase with Store {
  @observable
  PokeApi pokeApi = PokeApi();

  @action
  fetchPokemonList() {
    loadPokeApi().then((pokeList) {
      pokeApi = pokeList;
    });
  }

  Future<PokeApi> loadPokeApi() async {
    try {
      final response = await http.get(Uri.parse(ConstApi.pokeapiURL));
      debugPrint('API Response: ${response.body}');
      var decodeJson = jsonDecode(response.body);
      return PokeApi.fromJson(decodeJson);
    } catch (error) {
      debugPrint('Failed to load data: $error');
      return PokeApi();
    }
  }
}
