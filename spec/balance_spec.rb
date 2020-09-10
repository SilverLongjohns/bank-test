# frozen_string_literal: true

require 'balance.rb'

describe Balance do
  let(:account) { double :account }

  subject { described_class.new(account) }

  it 'should be able to draw up a total' do
    allow(account).to receive(:statement).and_return([{ deposit: 50 }, { withdrawal: 10 }])

    expect(subject.total).to eq(40)
  end
end
