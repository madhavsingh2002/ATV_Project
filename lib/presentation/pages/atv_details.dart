import 'package:flutter/material.dart';
import 'package:flutter_firebase_bloc/data/models/atv.dart';

class AtvDetails extends StatelessWidget {
  final ATV atv;
  AtvDetails({super.key, required this.atv});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(atv.model),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Add some padding for better spacing
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align all children to start (left)
            children: [
              Image.asset('assets/onboardingim.png'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    atv.model,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Price: \$${atv.pricePerHour.toStringAsFixed(2)}/h',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    const Icon(Icons.oil_barrel),
                    Text('Capacity:  ${atv.fuelCapacity.toStringAsFixed(0)}L'),
                  ]),
                  Row(children: [
                    const Icon(Icons.directions),
                    Text('Range: ${atv.distance.toStringAsFixed(0)}km'),
                  ]),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Description',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                textAlign: TextAlign.start, // Ensures the text aligns to the left
              ),
            ],
          ),
        ),
      ),
    );
  }
}
