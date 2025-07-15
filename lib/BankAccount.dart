class BankAccount {

  int ? _balance;
  BankAccount(this._balance);


  void deposit(int amount) {
    if (amount > 0) {
      _balance = _balance! + amount;
    }
  }

    void withDraw(int amount) {
      if (amount <= _balance! && amount > 0) {
        _balance = _balance! - amount;
      }
    }

    int getBalance() => _balance!;
  }
