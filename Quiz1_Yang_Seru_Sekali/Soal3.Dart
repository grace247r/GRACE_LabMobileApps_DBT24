import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  int angkaRandom = random.nextInt(100+1);

  List percobaan = [];
  for (var i = 0; i < percobaan.length; i++) {
    percobaan.add(i + 1);
  }

  int angkaUser = 0;

  while(angkaUser != angkaRandom){
    stdout.write("Tebak angka antara 0-100: ");
    String? input = stdin.readLineSync();
    angkaUser = int.parse(input!);
    percobaan.add(1);

    if(angkaUser < angkaRandom){
      print("Tebakan anda terlalu rendah");
    } else if (angkaUser > angkaRandom){
      print("Tebakan anda terlalu tinggi");
    } else {
      print("Selamat! Tebakan anda benar");
      print("Jumlah percobaan anda adalah: ${percobaan.length}");
    }
}
}