require "statement.rb"

describe Statement do

  let(:balance) { double :balance }
  let(:account) { double :account }

  subject { described_class.new(balance, account) }

  it "should display a list of transactions" do
    allow(account).to receive(:dates).and_return(['08/09/2020', '08/09/2020'])
    allow(account).to receive(:statement).and_return([{ deposit: 50 }, { withdrawal: 10 }])
    allow(balance).to receive(:history).and_return([50, 40])
    expect(subject.print).to eq(
      "date || credit || debit || balance
08/09/2020 || 50.00 ||  || 50.00
08/09/2020 ||  || 10.00 || 40.00"
    )
  end
end