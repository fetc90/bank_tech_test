# frozen_string_literal: true

class Statement

    attr_reader :history

    def initialize(history)
        @history = history 
    end
    
    def print
        print @history
    end 
end



# attr_reader :history

  # def initialize(history = log)
  #   @history
  # end

#   def print(_log)
#     puts 'date || credit || debit || balance'
#     @log.reverse.each do |transaction|
#       puts transaction.join(' || ')
#     end
#   end