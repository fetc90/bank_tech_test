# frozen_string_literal: true

# Records the date, amount and updated balance
# and formats numbers

class Transaction
  def credit(amount, balance)
    current = []
    current.push(date, '%.2f' % amount, '%.2f' % balance)
    current.insert(2, '')
  end

  def debit(amount, balance)
    current = []
    current.push(date, '%.2f' % amount, '%.2f' % balance)
    current.insert(1, '')
  end

  private

  def date
    Time.now.strftime('%d/%m/%Y')
  end
end
