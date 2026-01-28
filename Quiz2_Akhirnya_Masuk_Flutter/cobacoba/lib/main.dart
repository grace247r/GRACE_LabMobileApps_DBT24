import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter', style: TextStyle(fontSize: 30)),
        backgroundColor: Colors.pink,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.favorite, size: 100, color: Colors.pink),
            Text('I love Flutter', style: TextStyle(fontSize: 24)),
            SizedBox(
              width: 300,
              height: 300,
              child: Image(
                image: NetworkImage(
                  'https://i.pinimg.com/236x/b3/f8/67/b3f8670429f9ea59b9a481c9b0119149.jpg',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
