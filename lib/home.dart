import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var weather = ['Wind', 'Humidity', 'Pressure', 'Sunrise', 'Sunset'];
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        title: const Text('Kuala Lumpur'),
        leading: const Icon(Icons.apartment),
        centerTitle: true,
        backgroundColor: Colors.purple.shade100,
        foregroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Stack(
          children: [
            Positioned(
              bottom: 50,
              left: 10,
              right: 10,
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffe8b0ae),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Monday, Sunny',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Icon(
                    Icons.wb_sunny_outlined,
                    size: 100,
                  ),
                  const SizedBox(height: 20),
                  Card(
                    // elevation: 10,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const Text(
                        '45°',
                        style: TextStyle(fontSize: 72),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  for (var i = 0; i < weather.length; i++)
                    ListTile(
                      title: Text(weather[i]),
                      leading: Icon(Icons.wb_sunny),
                      dense: true,
                      visualDensity: VisualDensity.compact,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
