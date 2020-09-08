require "account.rb"

describe Account do
  let(:balance) {double :balance}

  subject { described_class.new(balance) }


  it "should be able to print a statement" do
    allow(balance).to receive(:dates).and_return(["08/09/2020"])
    allow(balance).to receive(:statement).and_return([{:deposit => 50}])
    allow(balance).to receive(:total).and_return([50])
    allow(balance).to receive(:total_balance).and_return([50])
    expect(subject.print_statement).to eq(
    "date || credit || debit || balance
08/09/2020 || 50.00 ||  || 50.00"
    )
  end

  it "should print a statement with withdrawals and deposits" do
    allow(balance).to receive(:dates).and_return(["08/09/2020", "08/09/2020"])
    allow(balance).to receive(:statement).and_return([{:deposit => 50}, {:withdrawal => 10}])
    allow(balance).to receive(:total).and_return([40])
    allow(balance).to receive(:total_balance).and_return([50, 40])
    expect(subject.print_statement).to eq(
    "date || credit || debit || balance
08/09/2020 || 50.00 ||  || 50.00
08/09/2020 ||  || 10.00 || 40.00"
    )
  end
end