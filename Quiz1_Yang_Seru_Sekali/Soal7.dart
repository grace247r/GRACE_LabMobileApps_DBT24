void main() {
  List a = [1,3,5,7];
  List b = [2,4,6,8];
  
  List C = ([...a, ...b]);
  C.sort();
  print(C);
  print(C[C.length - 2]);
}