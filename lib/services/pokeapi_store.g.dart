// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokeapi_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin $PokeApiStore on PokeApiStoreBase, Store {
  late final _$pokeApiAtom =
      Atom(name: 'PokeApiStoreBase.pokeApi', context: context);

  @override
  PokeApi get pokeApi {
    _$pokeApiAtom.reportRead();
    return super.pokeApi;
  }

  @override
  set pokeApi(PokeApi value) {
    _$pokeApiAtom.reportWrite(value, super.pokeApi, () {
      super.pokeApi = value;
    });
  }

  late final _$PokeApiStoreBaseActionController =
      ActionController(name: 'PokeApiStoreBase', context: context);

  @override
  dynamic fetchPokemonList() {
    final _$actionInfo = _$PokeApiStoreBaseActionController.startAction(
        name: 'PokeApiStoreBase.fetchPokemonList');
    try {
      return super.fetchPokemonList();
    } finally {
      _$PokeApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokeApi: ${pokeApi}
    ''';
  }
}
