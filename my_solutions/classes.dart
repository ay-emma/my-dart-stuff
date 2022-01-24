class BankAccount {
  // BankAccount(double balanceui) {
  //   this.balance = balanceui;
  // }
  // BankAccount(double balance) : this.balance = balance;  >>> initalizer list
  BankAccount(double balance) : this.balance = balance;
  double balance = 0;

  void deposit(double amount) {
    balance += amount;
  }

  bool withdraw(double amount) {
    if (balance > amount) {
      balance -= amount;
      return true;
    } else {
      return false;
    }
  }
}

void main(List<String> args) {
  final bankAccount = BankAccount(20);
  bankAccount.deposit(200);
  print(bankAccount.balance);
  final success = bankAccount.withdraw(150);
  print("Success : $success,  balance : ${bankAccount.balance}");
  final success2 = bankAccount.withdraw(160);
  print("Success : $success2,  balance : ${bankAccount.balance}");
}
