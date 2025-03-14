import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  Future<bool> checkIfAssetExists(String assetPath) async {
    try {
      await rootBundle.load(assetPath);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> portfolioItems = [
      {
        'image': 'lib/assets/P1.jpg',
        'title': '3D Modeling - Blender',
        'description':
            'A 3D modeling project created by my students using Blender.',
      },
      {
        'image': 'lib/assets/P2.jpg',
        'title': '2D Game Development - Unity',
        'description':
            'A 2D game project developed by my students using Unity.',
      },
      {
        'image': 'lib/assets/P3.png',
        'title': '3D Artwork - Blender',
        'description':
            'Another 3D modeling project made by my students using Blender.',
      },
      {
        'image': 'lib/assets/P4.jpg',
        'title': 'Teaching Robotics - Leanbot',
        'description':
            'I taught students how to program simple robots using Leanbot to move forward, backward, and turn.',
      },
      {
        'image': 'lib/assets/P5.jpg',
        'title': 'Gold Medal - National Informatics Competition',
        'description':
            'I won a gold medal in a national informatics competition organized by the Indonesian Science Olympiad Institution.',
      },
      {
        'image': 'lib/assets/P6.png',
        'title': 'Web Development - Front-End',
        'description':
            'A website project created by my students after learning front-end development from my lessons.',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Portfolio",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,

        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: portfolioItems.length,
          itemBuilder: (context, index) {
            final item = portfolioItems[index];
            return Card(
              color: Colors.white12,
              margin: const EdgeInsets.only(bottom: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FutureBuilder<bool>(
                    future: checkIfAssetExists(item['image']!),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasData && snapshot.data!) {
                        return ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.asset(
                            item['image']!,
                            width: double.infinity,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        );
                      } else {
                        return Container(
                          height: 200,
                          color: Colors.grey[800],
                          child: const Center(
                            child: Icon(
                              Icons.broken_image,
                              color: Colors.white,
                              size: 50,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['title']!,
                          style: const TextStyle(
                            color: Colors.amber,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          item['description']!,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
