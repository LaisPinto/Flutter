import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokemon_app/pages/_export_pages.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<dynamic> pokemonList = [];
  bool isLoading = false;
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: isLoading
            ? const Center(child: CircularProgressIndicator(),)
            : errorMessage.isNotEmpty
              ? Center(child: Text(errorMessage),)
              : ListView.builder(
                 itemCount: pokemonList.length,
                 itemBuilder: (context, index) {
                   final pokemon = pokemonList[index];
                   return ListTile(
                     leading: Image.network(
                       'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${index + 1}.png',
                     ),
                     title: Text(pokemon['name']),
                     onTap: () => Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context)  => PokemonDetailScreen(url: pokemon['url']),
                         )
                     ),
                   );
                   
                 }
        )
    );
  }

  @override
  void initState() {
    super.initState();
    fetchPokemonList();
  }

  void fetchPokemonList() async {
    setState(() {
      isLoading = true;
      errorMessage = '';
    });

    try {
      final response = await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=151'));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final results = data['results'];
        if (results != null && results is List<dynamic>) {
          setState(() {
            pokemonList = results;
            isLoading = false;
          });
        } else {
          setState(() {
            isLoading = false;
            errorMessage = 'Falha ao buscar a lista de Pokémon';
          });
        }
      } else {
        setState(() {
          isLoading = false;
          errorMessage = 'alha ao buscar a lista de Pokémon';
        });
      }
    } catch (e) {
      setState(() {
        isLoading = false;
        errorMessage = 'Error: $e';
      });
    }
  }
}
