# frozen_string_literal: true

require './lib/transaction'
require 'timecop'

describe 'Transaction' do
  let(:bank) { double :bank }

  before do
    allow(bank).to receive(:deposit).with(1000)
  end

#   describe '#deposit' do
#     it 'records date of deposit, the amount and the new balance' do
#       Timecop.freeze(Time.local(2012, 0o1, 10))
#       bank.deposit(1000)
#       expect(subject.credit(1000)).to eq([
#                                            ['10/01/2012', 1000.00, '', 1000.00]
#                                          ])
#     end
#   end
end
