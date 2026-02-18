import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/wave_widget.dart';
import 'add_medicine.dart';

class MedicineFilledPage extends StatelessWidget {
  const MedicineFilledPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F8),
      body: Stack(
        children: [
          _buildTopWave(),
          _buildBottomWave(context),
          _buildContent(context),
        ],
      ),
    );
  }

  // FIXED: Tinggi disesuaikan agar pendek (200) dan gradasi diseragamkan
  Widget _buildTopWave() {
    return ClipPath(
      clipper: TopWaveClipper(),
      child: Container(
        height: 200,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.92],
            colors: [Color(0xFF607890), Color(0xFFA9C1D9)],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                // Gunakan Navigator.pop jika ingin kembali,
                // atau push jika ingin ke halaman spesifik
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddMedicinePage(),
                    ),
                  );
                }
              },
            ),

            const SizedBox(height: 20),

            Text(
              "Mr.Robert’s Medicine",
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 30),

            _medicineCard(),
            const SizedBox(height: 15),
            _emptyCard(
              context,
            ), // FIXED: Ditambahkan context agar bisa navigasi
          ],
        ),
      ),
    );
  }

  Widget _medicineCard() {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFFE6EBE4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.asset("assets/images/pil.png", width: 30),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Paracetamol",
                  style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Text(
                  "2 pills | After Food",
                  style: GoogleFonts.inter(fontSize: 12),
                ),
              ],
            ),
          ),
          const Icon(Icons.add),
        ],
      ),
    );
  }

  // FIXED: Fungsi _emptyCard yang sebelumnya hilang/tidak ada
  Widget _emptyCard(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddMedicinePage()),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: const Color(0xFFE6EBE4).withOpacity(0.6),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Image.asset("assets/images/pills_1.png", width: 30),
            const SizedBox(width: 12),
            const Expanded(child: Text("Add Your Daily Medicine")),
            const Icon(Icons.add),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomWave(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipPath(
        clipper: BottomWaveClipper(),
        child: Container(
          height: 80, // Pendek sesuai permintaan
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
