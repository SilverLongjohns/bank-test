# frozen_string_literal: true

require_relative 'balance.rb'

class Account
  attr_reader :balance
  def initialize(balance)
    @balance = balance
  end

  def deposit(num)
    @balance.deposit(num)
  end

  def withdraw(num)
    @balance.withdraw(num)
  end

  def print_statement
    total
    output = ['date || credit || debit || balance']
    @balance.statement.each do |x|
      xindex = @balance.statement.find_index(x)
      if x[:deposit]
        output.push("#{@balance.dates[xindex]} || #{'%.2f' % x[:deposit]} ||  || #{'%.2f' % @balance.total_balance[xindex]}")
      else
        output.push("#{@balance.dates[xindex]} ||  || #{'%.2f' % x[:withdrawal]} || #{'%.2f' % @balance.total_balance[xindex]}")
      end
    end
    output.join("\n")
  end

  private

  def total
    @balance.total
  end
end
