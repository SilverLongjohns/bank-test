class Balance
  attr_reader :balance
  def initialize
    @balance = 0.00
  end

  def deposit(num)
    @balance += num
  end

end