# frozen_string_literal: true

# Bank class allows user to deposit and withdraw amount
# and print statement in table in IRB.

require_relative 'transaction'
require_relative 'statement'

class Bank
  attr_accessor :balance, :transaction, :statement, :transaction_history

  def initialize(balance = 0)
    @balance = 0
    @transaction = Transaction.new
    @statement = Statement.new
    @transaction_history = []
  end

  def deposit(amount)
    updated_balance = @balance += amount
    current_transaction = @transaction.credit(amount, updated_balance)
    @transaction_history << current_transaction
  end

  def withdraw(amount)
    updated_balance = @balance -= amount
    current_transaction = @transaction.debit(amount, updated_balance)
    @transaction_history << current_transaction
  end

  def print_statement
    log = @transaction_history
    @statement.print(log)
  end
end
