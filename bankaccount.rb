class BankAccount
  attr_accessor :name, :balance
  def initialize(name, balance=0)
    @name = name
    if balance >= 100
      @balance = balance
      else
        raise ArgumentError, "Minimum of $100 not met"
    end
  end
  def balance
    return @balance
  end
  def add(deposit)
    return @balance += deposit
  end
  def subtract(withdrawal)
    return @balance -= withdrawal
  end
  def transfer(amount,account)
    if amount <= 0
      raise ArgumentError, "Transfer must be more than zero"
    else
    @balance -= amount
    end
    account.balance += amount
    "Transaction completed"
  end
end
#great job
