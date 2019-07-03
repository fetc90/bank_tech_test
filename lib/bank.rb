# frozen_string_literal: true

# Bank class allows user to deposit and withdraw amount
# and print statement in table in IRB.

require_relative 'transaction'
require_relative 'statement'

class Bank
  attr_accessor :balance, :transaction, :statement, :transaction_history

  def initialize(_balance = 0)
    @balance = 0
    @transaction = Transaction.new
    @statement = Statement.new
    @transaction_history = []
  end

  def deposit(amount)
    @balance += amount
    store_deposit(amount)
  end

  def withdraw(amount)
    @balance -= amount
    store_withdrawal(amount)
   end

  def store_deposit(amount)
    balance = @balance
    @transaction.credit(amount, balance)
  end

  def store_withdrawal(amount)
    balance = @balance
    @transaction.debit(amount, balance)
  end

  #   def print_statement
  #     history = @transaction_history
  #     @statement.print()
  #   end
end
