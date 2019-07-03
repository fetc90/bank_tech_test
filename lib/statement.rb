# frozen_string_literal: true

# Can print user's bank statement in table with headings
# and most recent transactions first

class Statement
  attr_reader :history

  def initialize(history)
    @history = history
  end

  def print
    puts 'date || credit || debit || balance'
    @history.reverse.each do |transaction|
      puts transaction.join(' || ')
    end
  end
end
