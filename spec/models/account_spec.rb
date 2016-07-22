require 'rails_helper'

RSpec.describe Account, type: :model do
  it { should have_many(:account_histories) }

  describe 'validations' do
    subject { described_class.new(account_number: account_number, price: price) }
    let(:account_number) { 'Account_number' }
    let(:price) { 10 }

    it { should be_valid }

    context 'account_number missing' do
      let(:account_number) { nil }
      it { should be_invalid }
    end
    context 'account_number is too short' do
      let(:account_number) { '1234' }
      it { should be_invalid }
    end

    context 'price missing' do
      let(:price) { nil }
      it { should be_invalid }
    end
  end

end




