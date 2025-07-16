import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🔵 Background Image
        SizedBox.expand(
  child: Image.network(
    'https://cdn.pixabay.com/photo/2019/11/25/12/58/christmas-4651978_1280.jpg',
    fit: BoxFit.cover,
  ),
),


          // 🔴 Overlay Content
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.4), // dark overlay for contrast
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Explore The World",
                    style: TextStyle(
                      fontSize: 36,
                      color: Color.fromARGB(255, 5, 19, 167),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Find amazing places to visit and enjoy unforgettable experiences.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(214, 216, 19, 19),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // 🟢 Buttons
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                        ),
                        onPressed: () {},
                        child: const Text("Get Started"),
                      ),
                      const SizedBox(width: 15),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          side: const BorderSide(color: Colors.white),
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                        ),
                        onPressed: () {},
                        child: const Text("Learn More"),
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),

                  // 🔵 Optional Icons
                  Row(
                    children: const [
                      Icon(Icons.location_on, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        "Discover nearby destinations",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
