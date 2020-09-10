class Balance
  attr_reader :history
  def initialize(account)
    @account = account
    @history = []
  end

  def total
    current = 0
    @account.statement.each do |x|
      if x[:deposit]
        current += x[:deposit]
      else
        current -= x[:withdrawal]
      end
      @history << current
    end
    current
  end
end
