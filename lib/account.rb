require 'date'

class Account
  attr_reader :statement, :dates
  def initialize
    @statement = []
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
end
