import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
  
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Selamat Datang', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            const ObscuredTextFieldEmail(),
            const SizedBox(height: 20),
            const ObscuredTextFieldPassword(),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                onPressed: () {}, 
                child: const Text("Submit")),
            ),
          const Text("Created by ERUMA", style: TextStyle(fontSize: 10),)
          ],
        ),
      ),

      
    );
  }
}

class ObscuredTextFieldEmail extends StatelessWidget {
  const ObscuredTextFieldEmail ({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      width: 350,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Email',
        ),
      ),
    );
  }
}

class ObscuredTextFieldPassword extends StatelessWidget {
  const ObscuredTextFieldPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      width: 350,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
        ),
      ),
    );
  }
}

