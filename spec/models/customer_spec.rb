require 'rails_helper'

RSpec.describe Customer, type: :model do
  it { should respond_to :id }
  it { should respond_to :name }
  it { should respond_to :city }
  it { should respond_to :email }

  it { should have_one (:account) }

  describe 'validations' do
    subject { described_class.new(name: name, city: city, email: email) }
    let(:name) { 'Sanja' }
    let(:city) { 'Belgrade' }
    let(:email) { 'sanja.vujovic@rbt.rs' }

    context 'invalid name' do
      let(:name) { nil }
      it { should be_invalid }
    end

    context 'invalid city' do
      let(:city) { nil }
      it { should be_invalid }
    end

    describe 'email' do

      context 'invalid email' do
        let(:email) { nil }
        it { should be_invalid }
      end

      context 'invalid email format' do
        let(:email) { 'invalid mail' }
        it { should be_invalid }
      end

      # it 'when #email format is not valid' do
      #   subject.email = 'invalid mail'
      #   should_not be_valid
      # end

#      it { is_expected.to validate_uniqueness_of(:email) }

      # it 'when #email is not unique' do
      #   subject.save
      #   subject1 = build :subject
      #   subject1.save
      #
      #   subject1.should_not be_valid
      #   subject1.errors.full_messages[0].should match 'Email has already been taken'
      # end
    end

  end
end
