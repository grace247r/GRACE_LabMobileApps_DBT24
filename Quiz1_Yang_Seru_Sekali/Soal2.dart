import 'dart:io';
void main() {
  stdout.write("Masukan batu, gunting, kertas: ");
  String? input = stdin.readLineSync();

  String hasil = input ?? "";
  print("Pilihan anda adalah: $hasil");

  final random = ["batu", "gunting", "kertas"]..shuffle();
  List<String> pilihan = random;

  if (hasil == pilihan[0]) {
    print("Hasilnya adalah seri");
  } else if ((hasil == "batu" && pilihan[0] == "gunting") ||
      (hasil == "gunting" && pilihan[0] == "kertas") ||
      (hasil == "kertas" && pilihan[0] == "batu")) {
    print("Selamat anda menang");
  } else {
    print("Maaf anda kalah");
  }
}