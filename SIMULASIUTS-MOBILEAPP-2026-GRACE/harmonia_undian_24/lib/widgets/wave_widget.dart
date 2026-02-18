import 'package:flutter/material.dart';

class TopWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // Start di kiri pada 70% tinggi container
    path.lineTo(0, size.height * 0.7);

    // Alur landai: sedikit naik di tengah, lalu turun tipis di kanan
    path.cubicTo(
      size.width * 0.3,
      size.height * 0.5, // Naik sedikit
      size.width * 0.7,
      size.height * 0.9, // Turun landai
      size.width,
      size.height * 0.65, // Titik akhir kanan
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // Start sangat rendah agar wave terlihat pendek (90% bawah)
    path.moveTo(0, size.height * 0.9);

    path.cubicTo(
      size.width * 0.3,
      size.height * 0.98, // Cekungan sangat tipis
      size.width * 0.7,
      size.height * 0.82, // Ayunan landai ke atas
      size.width,
      size.height * 0.88, // Berakhir di kanan
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
