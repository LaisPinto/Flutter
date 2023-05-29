import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PokemonDetailScreen extends StatefulWidget {
  final String url;
  const PokemonDetailScreen({Key? key, required this.url}) : super(key: key);

  @override
  State<PokemonDetailScreen> createState() => _PokemonDetailScreenState();
}

class _PokemonDetailScreenState extends State<PokemonDetailScreen> {
  dynamic pokemonData;
  bool isLoading = false;
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Pokémon'),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : errorMessage.isNotEmpty
          ? Center(child: Text(errorMessage))
          : Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Text(
            'Name: ${pokemonData['name']}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text('Number: ${pokemonData['id']}'),
          const SizedBox(height: 10),
          Text('Height: ${pokemonData['height']}'),
          const SizedBox(height: 10),
          Text('Weight: ${pokemonData['weight']}'),
          const SizedBox(height: 10),
          Text('Types: ${pokemonData['types'].map((type) => type['type']['name']).join(', ')}'),
          const SizedBox(height: 10),
          Text('Abilities: ${pokemonData['abilities'].map((ability) => ability['ability']['name']).join(', ')}'),
          const SizedBox(height: 20),
          const SizedBox(height: 20),
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    fetchPokemonDetails();
  }

  void fetchPokemonDetails() async {
    setState(() {
      isLoading = true;
      errorMessage = '';
    });

    try {
      final response = await http.get(Uri.parse(widget.url));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          pokemonData = data;
          isLoading = false;
        });
      } else {
        setState(() {
          isLoading = false;
          errorMessage = 'Failed to fetch Pokemon details';
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



