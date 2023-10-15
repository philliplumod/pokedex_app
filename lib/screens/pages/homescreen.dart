import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex_app/models/pokeapi.dart';
import 'package:pokedex_app/services/pokeapi_store.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  late PokeApiStore pokeApiStore;
  @override
  void initState() {
    super.initState();
    pokeApiStore = PokeApiStore();
    pokeApiStore.fetchPokemonList(); // call the fetchPokemonList() method
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Observer(
          name: 'ListPokeApi',
          builder: (context) {
            PokeApi pokeApi = pokeApiStore.pokeApi;
            return ListView.builder(
              itemCount: pokeApi.pokemon!.length,
              itemBuilder: (context, index) {
                Pokemon pokemon = pokeApi.pokemon![index];
                return ListTile(
                  title: Text(pokemon.name ?? 'Unknown'),
                  // Display additional information as needed
                  subtitle: Text('ID: ${pokemon.id}'),
                  leading: Image.network(pokemon.img ?? ''),
                  // Add more widgets to display other details
                );
              },
            );
          }),
    );
  }
}
