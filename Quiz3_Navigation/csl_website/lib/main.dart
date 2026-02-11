import 'package:flutter/material.dart';

void main() {
  runApp(const PrasetiyaMulyaApp());
}

class PrasetiyaMulyaApp extends StatelessWidget {
  const PrasetiyaMulyaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Sans-Serif'),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _showDialog(BuildContext context, String menuName) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: const Text(
          "Informasi",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: Text("$menuName clicked"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK", style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        centerTitle: false,
        title: Image.network('https://www.prasetiyamulya.ac.id/wp-content/uploads/2020/01/Logo-Universitas-Prasetiya-Mulya.png',
        height: 60,
        fit: BoxFit.contain,
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.menu, color: Colors.black, size: 30),
            onSelected: (value) => _showDialog(context, value),
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(value: "Programs", child: Text("Programs")),
              const PopupMenuItem(value: "Addmission", child: Text("Addmission")),
              const PopupMenuItem(value: "People", child: Text("People")),
              const PopupMenuItem(value: "Laboratory", child: Text("Laboratory")),
              const PopupMenuItem(value: "Campus Life", child: Text("Campus Life")),
              const PopupMenuItem(value: "Offices & Services", child: Text("Offices & Services")),
            ],
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(thickness: 1, height: 1),

             Center(
                child: Image.network(
                  'https://www.prasetiyamulya.ac.id/wp-content/uploads/2020/01/Logo-Universitas-Prasetiya-Mulya.png',
                  width: 350,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),

              // --- VISION SECTION ---
              const SectionHeader(title: "VISION"),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "A globally recognized School for STEMpreneur Education and Research",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              const SizedBox(height: 30),

              // --- MISSION SECTION ---
              const SectionHeader(title: "MISSION"),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Provide quality STEM education and research for nurturing the holistic citizen graduates through:",
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(25, 20, 25, 40),
                child: Text(
                  "1. Collaborative learning by enterprising involving interdisciplinary catalytic projects\n"
                  "2. Innovative and impactful research to the society",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                ),
              ),

              // --- FOOTER ADDRESS ---
              Container(
                width: double.infinity,
                height: 250,
                padding: const EdgeInsets.all(25),
                color: Colors.black, 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image.network(
                      'https://www.prasetiyamulya.ac.id/office/publishing/wp-content/uploads/2021/03/Prasmul_logo_01-Putih.png',
                      height: 60,
                      fit: BoxFit.contain,
                    ),

                    Text(
                      "BSD City Kavling Edutown I.1",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white, 
                      ),
                    ),
                    Text(
                      "Jl. BSD Raya Utama, BSD City 15339",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Kabupaten Tangerang, Indonesia",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Tel. (021) 304-50-500",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 5,
          ),
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              letterSpacing: 1.1,
              fontSize: 14,
            ),
          ),
          onTap: () => _showDialog(context, title),
        ),
        Divider(color: Colors.white.withOpacity(0.1), height: 1),
      ],
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 10),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w900,
          color: Colors.black,
        ),
      ),
    );
  }
}
