require "account.rb"

describe Account do
  subject { described_class.new(Balance.new) }

  it "should be able to print a statement" do
    subject.deposit(50.00)
    expect(subject.print_statement).to eq(
    "date || credit || debit || balance
08/09/2020 || 50.00 ||  || 50.00"
    )
  end

  it "should print a statement with withdrawals and deposits" do
    subject.deposit(50)
    subject.withdraw(10)
    expect(subject.print_statement).to eq(
    "date || credit || debit || balance
08/09/2020 || 50.00 ||  || 50.00
08/09/2020 ||  || 10.00 || 40.00"
    )
  end
end