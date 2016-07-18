require 'rails_helper'

RSpec.describe Student, type: :model do
  subject { described_class.new(name: 'ime', surname: 'prezime') }

  describe "Validations" do

    describe "Name and surname" do
      it "is valid with valid attributes" do
        expect(subject).to be_valid
      end
    end

    describe "name" do
      it "is not valid without a name" do
        subject.name = nil
        expect(subject).to_not be_valid
      end
      it "is valid" do
        subject.name = "ime"
        expect(subject.name).to eq("ime")
      end
    end

    describe "surname" do
      it "is not valid without a surname" do
        subject.surname = nil
        expect(subject).to_not be_valid
      end
    end

  end
end