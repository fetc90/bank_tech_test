# frozen_string_literal: true

def add_deposit_1000
  Timecop.freeze(Time.local(2012, 0o1, 10))
  bank = Bank.new
  bank.deposit(1000)
end

def add_deposit_5000
  bank.deposit(1000)
end
