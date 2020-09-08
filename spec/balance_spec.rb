require "balance.rb"

describe Balance do

  subject{ described_class.new }

  it "should be able to save a deposit" do
    subject.deposit(300)
    expect(subject.balance).to eq(300.00)
  end
end