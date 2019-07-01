class Bank 
attr_reader :balance, :total_transactions 

  def initialize(balance = 0)
    @balance = balance
    @total_transactions = []
  end

  def deposit(amount)
    @balance += amount
    store_transaction(amount)
  end 

  def withdraw(amount)
    @balance -= amount
    store_transaction(amount)
  end 

  def date_of_transaction
    Time.now.strftime('%d-%m-%Y')
  end 

  def store_transaction(amount)
    current_transaction = []
    current_transaction.push(date_of_transaction, amount, @balance)
    @total_transactions.push(current_transaction)
  end 

  def statement
    'date || credit || debit || balance'
  end


end
