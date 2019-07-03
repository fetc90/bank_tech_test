# frozen_string_literal: true

require './lib/transaction'
require 'timecop'

describe 'Transaction' do
  let(:bank) { double :bank }
  transaction = Transaction.new

  before do
    allow(bank).to receive(:deposit).with(1000).and_return(1000, 1000)
    allow(bank).to receive(:withdraw).with(500).and_return(500, 500)
  end

  describe 'credit account' do
    it 'records date of deposit, the amount paid and updated balance' do
      Timecop.freeze(Time.local(2012, 0o1, 10))
      bank.deposit(1000)

      expect(transaction.credit(1000, 1000)).to eq([
                                                     '10/01/2012', format('%.2f', 1000), '', format('%.2f', 1000)
                                                   ])
    end
  end

  describe 'debit account' do
    it 'records date of withdrawal, the amount taken and updated balance' do
      Timecop.freeze(Time.local(2012, 0o1, 14))
      bank.withdraw(500)
     
      expect(transaction.debit(500, 500)).to eq([
                                                     '14/01/2012', '', format('%.2f', 500), format('%.2f', 500)
                                                   ])
    end
  end
end
