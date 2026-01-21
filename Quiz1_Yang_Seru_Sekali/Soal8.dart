import 'dart:io';

void main(){
  stdout.write("Masukkan angka: ");
  String? input = stdin.readLineSync();
  int angka = int.parse(input!);

  int faktor = 0;
  for (int i = 1; i <= angka; i++){
    if (angka % i == 0){
      faktor += i;
      print(i);
    }
  }

  print("Jumlah faktor dari $angka adalah: ${faktor-angka}");
  
  if (faktor - angka == angka){
    print("true");
  } else {
    print("false");
  }
}