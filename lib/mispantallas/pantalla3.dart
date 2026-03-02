import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

////////////////////////////////////////////////////////////
/// PANTALLA 3 - REPRODUCTOR
////////////////////////////////////////////////////////////

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundDark,
      appBar: AppBar(
        backgroundColor: appleRed,
        title: const Text(
          "Reproduciendo",
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: navBar(context, 3),

      // 🔥 AQUÍ ESTÁ LA CORRECCIÓN
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              margin: const EdgeInsets.all(20),
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/refs/heads/main/The_Weeknd_-_Blinding_Lights.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const Text(
              "Blinding Lights",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "The Weeknd",
              style: TextStyle(color: Colors.white70),
            ),

            Slider(
              value: 0.4,
              onChanged: (value) {},
              activeColor: appleRed,
              inactiveColor: Colors.white24,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("1:20", style: TextStyle(color: Colors.white)),
                  Text("3:45", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.skip_previous, color: Colors.white, size: 40),
                SizedBox(width: 20),
                Icon(Icons.play_circle_fill, color: Colors.white, size: 70),
                SizedBox(width: 20),
                Icon(Icons.skip_next, color: Colors.white, size: 40),
              ],
            ),

            const SizedBox(height: 20),

            const Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 35,
            ),

            const SizedBox(height: 30), // pequeño espacio final
          ],
        ),
      ),
    );
  }
}