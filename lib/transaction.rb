# Records the date, amount and updated balance. 
# If transaction is deposit, add " " on second index
# If transaction is withdrawal, add " " on first index
# Formats numbers 

class Transaction 
  
  def initialize
    @history = []
  end 

  def credit(amount, updated_balance)
    current = []
    current.push(date, '%.2f' % amount, '%.2f' % updated_balance)
    current.insert(2, '')
    @history << current
  end 

  def debit(amount, updated_balance)
    current = []
    current.push(date, '%.2f' % amount, '%.2f' % updated_balance)
    current.insert(1, '')
    @history << current
  end 

  private

  def date
    Time.now.strftime('%d/%m/%Y')
  end
end
