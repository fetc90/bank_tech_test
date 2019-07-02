# frozen_string_literal: true

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
    expect(bank.total_transactions).to eq([
                                            ['10/01/2012', 500, '', 500],
                                            ['10/01/2012', 200, '', 700]
                                          ])
  end

  context '#deposit' do
    Timecop.freeze(Time.local(2012, 0o1, 10))

    it 'adds the deposit amount to the account total' do
      bank = Bank.new
      bank.deposit(1000)
      expect(bank.balance).to eq(1000)
    end

    it 'records date of deposit, the amount and the new balance' do
      expect(bank.total_transactions).to eq([
                                              ['10/01/2012', 1000, '', 1000]
                                            ])
    end
  end

  context '#withdraw' do
    it 'subtracts the withdrawal from account total' do
      add_deposit_1000
      Timecop.freeze(Time.local(2012, 0o1, 14))
      bank.withdraw(500)
      expect(bank.balance).to eq(500)
    end

    it 'records date of withdrawal, the amount and the new balance' do
      expect(bank.total_transactions).to eq([
                                              ['10/01/2012', 1000, '', 1000],
                                              ['14/01/2012', '', 500, 500]
                                            ])
    end
  end
end
