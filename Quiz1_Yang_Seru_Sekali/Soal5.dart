import 'dart:io';
import 'dart:math';

class ujian {
  String nama;
  int nilaiakhir;

  ujian(this.nama, this.nilaiakhir);
}

void inputStudent(String name, int nilai) {
  int percobaan = 1;
  int nilaiakhir = 0;
  while (percobaan <= 3) {
    stdout.write("Masukkan nama Student: ");
    name = stdin.readLineSync()!;
    percobaan += 1;

    stdout.write("Masukkan nilai $name: ");
    nilai = int.parse(stdin.readLineSync()!);
    nilaiakhir += nilai;
  }

  num rataRata = nilaiakhir / 3;
  
  print("Rata-rata nilai dari Student adalah: $rataRata");
}

void main() {
  String name = "";
  int nilai = 0;

  inputStudent(name, nilai);
}