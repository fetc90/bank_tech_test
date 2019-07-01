class Bank 

attr_reader :balance, :single_transaction, :transactions, :date

  def initialize(balance = 0)
    @balance = balance
    @single_transaction = []
    @transactions = []
    @date = Time.now.strftime('%d-%m-%Y')
  end

  def deposit(amount)
    updated_balance = @balance += amount
  end 

  def withdraw(amount)
    updated_balance = @balance -= amount
  end 

  def statement
    heading = 'date || credit || debit || balance'
  end
end
