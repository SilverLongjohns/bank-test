# frozen_string_literal: true

require 'date'

class Balance
  attr_reader :total_balance, :statement, :dates
  def initialize
    @statement = []
    @total_balance = []
    @dates = []
  end

  def deposit(num)
    transaction = {}

    transaction[:deposit] = num
    @statement << transaction
    @dates << DateTime.now.strftime('%d/%m/%Y')
  end

  def withdraw(num)
    transaction = {}
    transaction[:withdrawal] = num
    @statement << transaction
    @dates << DateTime.now.strftime('%d/%m/%Y')
  end

  def total
    current = 0
    @statement.each do |x|
      if x[:deposit]
        current += x[:deposit]
      else
        current -= x[:withdrawal]
      end
      @total_balance << current
    end
    current
  end
end
