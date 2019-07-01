require './lib/bank'
require 'timecop'
require_relative 'spec_helpers'

describe 'bank' do 
  bank = Bank.new 

  it 'has an account balance of zero by default' do 
    expect(bank.balance).to eq(0)
  end 

  context 'when making a deposit' do 
    it 'adds the deposit to the account total' do 
      bank.deposit(1000)
      expect(bank.balance).to eq(1000)
    end 

    it 'records the date the deposit was added, the amount and the new balance' do
        Timecop.freeze(Time.local(2012, 01, 10))
        expect(bank.store_current_transaction(1000)).to eq(['10-01-2012', 1000, 1000]) 
    end 
  end 

  context 'when making a withdrawal' do 
    it 'subtracts the withdrawal from account total' do 
      add_deposit
      bank.withdraw(500)
      expect(bank.balance).to eq(500)
    end 

    it 'records the date the withdrawal was made, the amount and the new balance' do
        Timecop.freeze(Time.local(2012, 01, 14))
        expect(bank.store_current_transaction(500)).to eq(['14-01-2012', 500, 500]) 
    end 
  end 

end


 

#   it 'prints a bank statement' do 
#     expect(bank.statement).to eq('
#     date || credit || debit || balance \n
#     10/01/2012 || || 1000.00 || 1000.00")
#   end 
# end 

#     date || credit || debit || balance
# 14/01/2012 || || 500.00 || 2500.00
# 13/01/2012 || 2000.00 || || 3000.00
# 10/01/2012 || 1000.00 || || 1000.00

# Deposits, withdrawal.
# Account statement (date, amount, balance) printing.
# Data can be kept in memory (it doesn\'t need to be stored to a database or anything).

# Acceptance criteria
# Given a client makes a deposit of 1000 on 10-01-2012
# And a deposit of 2000 on 13-01-2012
# And a withdrawal of 500 on 14-01-2012
# When she prints her bank statement
# Then she would see

# allow(Time).to receive(:2012).and_return("10-01-2012")


# date = 
    # single_transaction.push(date, amount, updated_balance)