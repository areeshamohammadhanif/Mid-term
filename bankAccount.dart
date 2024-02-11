void main() {
  runBankTask();
}

void runBankTask() {
  var accountOne = BankAccount(123, "saving", 15, 100);
  var accountTwo = BankAccount(456, "current", 0, 500);

  accountOne.deposite(500);
  accountOne.withdraw(1000);
  accountOne.deposite(300);
  accountOne.addInterest();
  accountOne.withdraw(50);
  accountOne.display();

  print('');
  accountTwo.deposite(1500);
  accountTwo.withdraw(1000);
  accountTwo.deposite(300);
  accountTwo.addInterest();
  accountTwo.withdraw(50);
  accountTwo.display();
}

class BankAccount {
  int accountNumber;
  String accountType;
  double interestRate;
  double balance;

  BankAccount(
      this.accountNumber, this.accountType, this.interestRate, this.balance);

  void deposite(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      print("you cannot withdraw more than the current balance");
    }
  }

  void addInterest() {
    balance += balance * interestRate / 100;
  }

  void display() {
    print("Account number: $accountNumber");
    print("My balance: $balance");
    print("Account Type: $accountType");
    print("Interest Rate: $interestRate");
  }
}
