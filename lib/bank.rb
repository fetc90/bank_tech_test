class Bank 
attr_reader :balance, :total_transactions 

  def initialize(balance = 0)
    @balance = balance
    @total_transactions = []
  end

  def deposit(amount)
    @balance += amount
    store_current_transaction(amount)
  end 

  def withdraw(amount)
    @balance -= amount
    store_current_transaction(amount)
  end 

  def store_current_transaction(amount)
    transaction = []
    transaction.push(date_of_transaction, amount, @balance)
  end 

  def date_of_transaction
    Time.now.strftime('%d-%m-%Y')
  end 

  def statement
    'date || credit || debit || balance'
  end
end
