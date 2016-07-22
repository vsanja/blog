require 'rails_helper'

RSpec.describe AccountHistory, type: :model do
  it { should respond_to :id }
  it { should respond_to :account_id }


  it { should respond_to :account }

  describe 'validations' do
    subject { described_class.new(account_id: account_id) }
    let(:account) { create(:account) }
    let(:account_id) { account.id }

    it { should be_valid }

    context 'invalid account given' do
      let(:account_id) { (Account.last.try(:id) || 0) + 1 }
      it { should be_invalid }
    end
  end


  # it { should belong_to(:account).class_name('AccountHistory').with_foreign_key('account_id') }
end