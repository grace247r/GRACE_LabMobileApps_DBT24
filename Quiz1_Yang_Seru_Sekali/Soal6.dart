void main() {
  Account account = Account("John Doe", 1000);

  print("Saldo awal: ${account.saldo}");

  deposit(account, 500);
  print("Saldo setelah deposit 500: ${account.saldo}");

  withdraw(account, 200);
  print("Saldo setelah withdraw 200: ${account.saldo}");

}

class Account{
  String? nama;
  int? saldo;

  Account(this.nama, this.saldo);
}
void deposit(Account account, int amount) {
  account.saldo = account.saldo! + amount;
}
void withdraw(Account account, int amount) {
  account.saldo = account.saldo! - amount;
}
