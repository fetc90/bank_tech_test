# frozen_string_literal: true

require './lib/transaction'
require 'timecop'

describe 'Transaction' do
  let(:bank) { double :bank }
  transaction = Transaction.new

  before do
    allow(bank).to receive(:deposit)
    allow(bank).to receive(:deposit).with(1000, :balance).and_return(1000, 1000)
  end

  describe 'credit account' do
    it 'records date of deposit, the amount paid and updated balance' do
      Timecop.freeze(Time.local(2012, 0o1, 10))
      bank.deposit(1000, :balance)

      expect(transaction.credit(1000, 1000)).to eq([
                                                     '10/01/2012', format('%.2f', 1000), '', format('%.2f', 1000)
                                                   ])
    end
  end
end

# RSpec.describe "and_call_original" do
#     it "can be overriden for specific arguments using #with" do
#       allow(Calculator).to receive(:add).and_call_original
#       allow(Calculator).to receive(:add).with(2, 3).and_return(-5)

#       expect(Calculator.add(2, 2)).to eq(4)
#       expect(Calculator.add(2, 3)).to eq(-5)
#     end
#   end
