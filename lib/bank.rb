class Bank 

attr_reader :balance, :single_transaction, :transactions

  def initialize(balance = 0)
    @balance = balance
    @single_transaction = []
    @transactions = []
  end

  def deposit(amount)
    updated_balance = @balance += amount
    date = date_of_transaction
    p "----------date and transaction--------"
    p @single_transaction.push(date, amount, updated_balance)
  end 

  def date_of_transaction
    Time.now.strftime('%d-%m-%Y')
  end 

  def withdraw(amount)
    @balance -= amount
  end 

  def statement
    'date || credit || debit || balance'
  end
end

