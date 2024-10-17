class BankAccount {
  String _accountNum;
  double _balance;

  BankAccount(this._accountNum, double initialBalance)
      : _balance = initialBalance;

  double get balance => _balance;

  void deposit(int sum) {
    _balance += sum;
    print('$sum has been depositied into your account. You have: $balance now');
  }

  withdraw(int sum) {
    _balance -= sum;
    print('$sum has been withdraw from your account');
  }
}

void main() {
  final myBankAccount = BankAccount('12121221', 0.0);
  print(myBankAccount.balance);
  myBankAccount.deposit(1000);
  myBankAccount.withdraw(100);
  print(myBankAccount.balance);
}
