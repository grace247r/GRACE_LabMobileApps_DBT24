import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/wave_widget.dart';

class HomeEmptyScreen extends StatelessWidget {
  const HomeEmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F8),
      body: Stack(
        children: [
          // 1. Header Atas (Sekarang memanggil fungsi yang benar)
          _buildTopWave(),

          // 2. Wave Bawah
          _buildBottomWave(context),

          // 3. Konten Teks & Search
          _buildContent(context),
        ],
      ),
    );
  }

  // ================= TOP HEADER (KONSISTEN & PENDEK) =================

  Widget _buildTopWave() {
    return ClipPath(
      clipper: TopWaveClipper(),
      child: Container(
        height: 200, // Tinggi pendek sesuai permintaan
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.92],
            colors: [
              Color(0xFF607890), // Warna 0%
              Color(0xFFA9C1D9), // Warna 92%
            ],
          ),
        ),
      ),
    );
  }

  // ================= CONTENT =================

  Widget _buildContent(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            /// Back Button Rata Kiri
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                }
              },
            ),

            const SizedBox(height: 25),

            /// Title Rata Kiri
            Text(
              "Mr.Robert’s Medicine",
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 20),

            /// Search Field Ramping
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white, // Putih bersih agar kontras dengan wave
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  suffixIcon: const Icon(Icons.mic, color: Colors.grey),
                  hintText: "Search",
                  hintStyle: GoogleFonts.inter(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),

            const SizedBox(height: 40),

            /// Empty Card
            _buildEmptyCard(context),
          ],
        ),
      ),
    );
  }

  // ================= EMPTY CARD =================

  Widget _buildEmptyCard(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/add');
      },
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: const Color(0xFFE6EBE4),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            
            Image.asset("assets/images/pills_1.png", width: 30),
            const SizedBox(width: 15),
            Expanded(
              child: Text(
                "Add Your Daily Medicine",
                style: GoogleFonts.inter(fontWeight: FontWeight.w600),
              ),
            ),
            const CircleAvatar(
              backgroundColor: Color(0xFF95A589),
              radius: 15,
              child: Icon(Icons.add, color: Colors.white, size: 20),
            ),
          ],
        ),
      ),
    );
  }

  // ================= BOTTOM WAVE (TIPIS) =================

  Widget _buildBottomWave(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipPath(
        clipper: BottomWaveClipper(),
        child: Container(
          height: 80, // Tipis sesuai Figma
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF607890), Color(0xFFA9C1D9)],
            ),
          ),
        ),
      ),
    );
  }
}
