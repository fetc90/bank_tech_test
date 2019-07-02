# frozen_string_literal: true

class Statement

  def print(log)
    puts 'date || credit || debit || balance'
    log.reverse.each do |transaction|
      puts transaction.join(' || ')
    end
  end

end
