require_relative 'account.rb'
require_relative 'balance.rb'

class Statement
  attr_reader :account

  def initialize(balance, account)
    @balance = balance
    @account = account
  end

  def print
    output = ['date || credit || debit || balance']
    @account.statement.each do |x|
      xindex = @account.statement.find_index(x)
      if x[:deposit]
        output.push("#{@account.dates[xindex]} || #{'%.2f' % x[:deposit]} ||  || #{'%.2f' % balance_history[xindex]}")
      else
        output.push("#{@account.dates[xindex]} ||  || #{'%.2f' % x[:withdrawal]} || #{'%.2f' % balance_history[xindex]}")
      end
    end
    output.join("\n")
  end

  private
    def balance_history
      @balance.history
    end
end