# frozen_string_literal: true

require 'balance.rb'

describe Balance do
  subject { described_class.new }

  it 'should be able to save a deposit' do
    subject.deposit(300)
    expect(subject.total).to eq(300.00)
  end

  it 'should be able to save a withdrawal' do
    subject.deposit(300)
    subject.withdraw(100)
    expect(subject.total).to eq(200.00)
  end
end
