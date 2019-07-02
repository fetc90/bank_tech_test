# frozen_string_literal: true

class Statement
  def intialize(log)
    @log = log
  end

  def print
    puts 'date || credit || debit || balance'
    @log.reverse.each do |transaction|
      puts transaction.join(' || ')
    end
  end
end
