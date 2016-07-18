require 'rails_helper'
RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  subject { described_class.new(name: 'admin', email: 'email@yahoo.com' , password: 'admin') }

  describe "Validations" do

    describe "Name, email and password" do
      it "is valid with valid attributes" do
        expect(subject).to be_valid
      end
    end

    describe "name" do
      it "length of username" do
        subject.name = 's' * 51
        expect(subject).to_not be_valid
      end
      it "is valid" do
        subject.name = "admin"
        expect(subject.name).to eq("admin")
      end
    end

    #username mora biti jedinstven
    describe "password" do
      it "is not valid without a password" do
        subject.password = nil
        expect(subject).to_not be_valid
      end
    end

    describe "email" do
      it "is not valid without a email" do
        subject.email = nil
        expect(subject).to_not be_valid
      end
    end
    #password mora biti najmanje 6 karaktera i kombinacija simbola

  end
end