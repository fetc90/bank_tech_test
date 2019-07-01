require './lib/bank'
require 'timecop'
require_relative 'spec_helpers'

describe 'bank' do 
  bank = Bank.new

  it 'has an account balance of zero by default' do 
    expect(bank.balance).to eq(0)
  end 

  it 'stores all transactions made' do 
    bank.deposit(500)
    bank.deposit(200)
    expect(bank.total_transactions).to eq([["10-01-2012", 500, 500], ["10-01-2012", 200, 700]] )
  end 

  context '#deposit' do 
    Timecop.freeze(Time.local(2012, 01, 10))

    it 'adds the deposit amount to the account total' do 
      bank = Bank.new
      bank.deposit(1000)
      expect(bank.balance).to eq(1000)
    end 

    it 'records the date the transaction was made, the amount and the new balance' do 
      expect(bank.total_transactions).to eq([['10-01-2012', 1000, 1000]]) 
    end 
  end 

  context '#withdraw' do 
    it 'subtracts the withdrawal from account total' do 
      add_deposit_1000
      Timecop.freeze(Time.local(2012, 01, 14))
      bank.withdraw(500)
      expect(bank.balance).to eq(500)
    end 

    it 'records the date the withdrawal was made, the amount and the new balance' do
        expect(bank.total_transactions).to eq([['10-01-2012', 1000, 1000],['14-01-2012', 500, 500]]) 
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