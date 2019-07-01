class Bank 
attr_reader :balance, :total_transactions 

  def initialize(balance = 0)
    @balance = balance
    @total_transactions = []
  end

  def statement
    heading = "date || credit || debit || balance"
    puts heading
    total_transactions.reverse.each do |transaction|
      puts transaction.join(" || ")
    end 
  end

  def deposit(amount)
    @balance += amount
    store_credit_transaction(amount)
  end 

  def withdraw(amount)
    @balance -= amount
    store_debit_transaction(amount)
  end 

  def store_transaction(amount)
    transaction = []
    transaction.push(date, amount, @balance)
  end 

  def store_credit_transaction(amount)
    transaction = []
    transaction.push(date, amount, @balance)
    transaction.insert(2, '')
    @total_transactions.push(transaction)
  end 

  def store_debit_transaction(amount)
    transaction = []
    transaction.push(date, amount, @balance)
    transaction.insert(1, '')
    @total_transactions.push(transaction)
  end 

  private
  
  def date
    Time.now.strftime('%d/%m/%Y')
  end 
end 


 
