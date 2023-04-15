import 'package:flutter/material.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({super.key});

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 170,
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Theme.of(context).colorScheme.primary.withOpacity(
                    0.2,
                  ),
            ),
          ),
          child: const Text(
            'No location chosen yet',
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.location_on),
              label: const Text(
                'Get current location',
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.map_sharp),
              label: const Text(
                'Select on map',
              ),
            ),
          ],
        )
      ],
    );
  }
}
