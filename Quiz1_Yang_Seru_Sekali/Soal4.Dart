import 'dart:io';

void main() {
  stdout.write("Masukkan angka: ");
  String? input = stdin.readLineSync();
  int angka = int.parse(input!);

  bilanganPrima(angka);
}

void bilanganPrima(int angka) {
  if (angka % 2 == 0) {
    print("$angka bukan bilangan prima");
  } else {
    print("$angka adalah bilangan prima");
  }
}