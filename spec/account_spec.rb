# frozen_string_literal: true

require 'account.rb'

describe Account do

  subject { described_class.new }

  it "should be able to make a deposit" do
    subject.deposit(40)
    expect(subject.statement).to eq([{:deposit => 40}])
  end

  it "should be able to make a withdrawal" do
    subject.withdraw(10)
    expect(subject.statement).to eq([{:withdrawal => 10}])
  end
end
