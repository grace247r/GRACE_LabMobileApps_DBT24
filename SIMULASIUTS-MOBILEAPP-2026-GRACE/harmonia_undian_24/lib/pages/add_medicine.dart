import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/wave_widget.dart';

class AddMedicinePage extends StatefulWidget {
  const AddMedicinePage({super.key});

  @override
  State<AddMedicinePage> createState() => _AddMedicinePageState();
}

class _AddMedicinePageState extends State<AddMedicinePage> {
  // 1. Variabel State untuk seleksi interaktif
  int _selectedShapeIndex = -1;
  int _selectedFoodIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          _buildBottomWave(context),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      _buildLabel("Pills name"),
                      _buildTextField("Paracetamol"),
                      const SizedBox(height: 18),

                      _buildLabel("Dose"),
                      _buildSubLabel(
                        "How many pills do you need to take it once?",
                      ),
                      _buildNumberField("2", "Pills"),
                      const SizedBox(height: 18),

                      _buildLabel("Duration"),
                      _buildSubLabel(
                        "How many days do you need to take the pills",
                      ),
                      _buildDropdown("30 Days"),
                      const SizedBox(height: 18),

                      _buildLabel("Shape"),
                      _buildSubLabel("Choose Your Medicine Type"),
                      _buildShapeSelector(), // Interaktif & No Overflow
                      const SizedBox(height: 18),

                      _buildLabel("Quantity"),
                      _buildSubLabel("Enter the total quantity of pills"),
                      _buildNumberField("160", "Pills"),
                      const SizedBox(height: 18),

                      _buildLabel("Time"),
                      _buildSubLabel(
                        "Add time when you need to take the pills",
                      ),
                      _buildTextField("19 : 00"),
                      const SizedBox(height: 18),

                      _buildLabel("Food & Pills"),
                      _buildSubLabel(
                        "Set when to take your pills: Before meals, With meals, or After meals.",
                      ),
                      _buildFoodAndPillsField(), // Interaktif
                      const SizedBox(height: 35),

                      _buildAddButton(context),
                      const SizedBox(height: 120),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // --- WIDGET HELPER ---

  Widget _buildShapeSelector() {
    List<String> shapes = [
      "assets/images/obat.png",
      "assets/images/pil.png",
      "assets/images/suntik.png",
      "assets/images/Drink Medicine.png",
    ];

    // Menggunakan SingleChildScrollView untuk mencegah RIGHT OVERFLOW
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(shapes.length, (index) {
          bool isSelected = _selectedShapeIndex == index;
          return GestureDetector(
            onTap: () => setState(() => _selectedShapeIndex = index),
            child: Container(
              margin: const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                // Warna 8E9E82 dengan opasitas tipis saat dipilih
                color: isSelected
                    ? const Color(0xFF8E9E82).withOpacity(0.2)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                border: isSelected
                    ? Border.all(color: const Color(0xFF8E9E82), width: 2)
                    : null,
              ),
              child: Image.asset(shapes[index], width: 55, height: 55),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildFoodAndPillsField() {
    List<String> foodOptions = [
      "assets/images/Group 9.png",
      "assets/images/Group 10.png",
      "assets/images/Group 11.png",
    ];

    return Row(
      children: List.generate(foodOptions.length, (index) {
        bool isSelected = _selectedFoodIndex == index;
        return GestureDetector(
          onTap: () => setState(() => _selectedFoodIndex = index),
          child: Container(
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: isSelected
                  ? const Color(0xFF8E9E82).withOpacity(0.2)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(15),
              border: isSelected
                  ? Border.all(color: const Color(0xFF8E9E82), width: 2)
                  : null,
            ),
            child: _assetIcon(foodOptions[index], 85),
          ),
        );
      }),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: TopWaveClipper(),
          child: Container(
            height: 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.92], // Presisi sesuai Figma
                colors: [Color(0xFF607890), Color(0xFFA9C1D9)],
              ),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerLeft,
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 28,
                  ),
                  onPressed: () {
                    if (Navigator.canPop(context)) Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Add Your\nDaily Medicine",
                      style: GoogleFonts.inter(
                        fontSize: 26,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        height: 1.1,
                      ),
                    ),
                    Image.asset(
                      "assets/images/pills_1.png",
                      width: 90,
                      height: 90,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextField(String hint) {
    return Container(
      height: 48,
      margin: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFF9BA996)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: GoogleFonts.inter(color: Colors.grey, fontSize: 14),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) => Text(
    text,
    style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w700),
  );
  Widget _buildSubLabel(String text) => Padding(
    padding: const EdgeInsets.only(top: 2, bottom: 6),
    child: Text(
      text,
      style: GoogleFonts.inter(fontSize: 11, color: const Color(0xFF7E91A1)),
    ),
  );
  Widget _assetIcon(String path, double size) =>
      Image.asset(path, width: size, height: size, fit: BoxFit.contain);

  Widget _buildNumberField(String val, String unit) {
    return Row(
      children: [
        Expanded(child: _buildTextField(val)),
        const SizedBox(width: 15),
        Text(
          unit,
          style: GoogleFonts.inter(fontSize: 17, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _buildDropdown(String value) {
    return Container(
      height: 48,
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF9BA996)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          isExpanded: true,
          items: [
            value,
          ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
          onChanged: (_) {},
        ),
      ),
    );
  }

  Widget _buildAddButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF95A589),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 2,
        ),
        onPressed: () => Navigator.pushReplacementNamed(context, '/filled'),
        child: Text(
          "Add Pills",
          style: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16,
          ),
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
          height: 80,
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
