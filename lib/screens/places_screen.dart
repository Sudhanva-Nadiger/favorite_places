import 'package:favorite_places/screens/add_place.dart';
import 'package:favorite_places/widgets/places_list.dart';
import 'package:flutter/material.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your places',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const AddPlaceScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: PlacesList(places: []),
    );
  }
}
