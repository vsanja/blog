require 'rails_helper'

RSpec.describe Article, type: :model do
  describe '::comments' do
    let(:article_with_comments) { create(:article, comments: create_list(:comment, 2)) }
    subject { article_with_comments.comments.count }

    it { should eq 2 }
  end

  describe 'validations' do
    subject { described_class.new(title: title, text: text) }
    let(:title) { 'Test Title' }
    let(:text) { 'Test Body' }

    it { should be_valid }

    context 'title missing' do
      let(:title) { nil }
      it { should be_invalid }
    end
    context 'title is too short' do
      let(:title) { 'Test' }
      it { should be_invalid }
    end

    context 'text missing' do
      let(:text) { nil }
      it { should be_invalid }
    end
  end










  # subject { described_class.new(title: "naslov", text: "opis") } #napravili smo jedan subject koji je sada ustvari artikal
  # let(:comment) { FactoryGirl.create(:comment) } #da li ovde moraju ista imena kao u factory girl-u
  # let(:comment2) { FactoryGirl.create(:comment2) }
  # @array = [:comment, :comment2] #ovaj niz mi treba zbog testiranja da li jedan artikal ima dva komentara
  #
  # describe "Validations" do
  #
  #   # describe "kom1" do
  #   #   it " article has kom1" do
  #   #   kom1.article=subject
  #   #   expect(subject).to be_truthy
  #   #   end
  #   # end
  #   #
  #   # describe "kom2" do
  #   #   it " article has kom1" do
  #   #    kom2.article = subject
  #   #     expect(subject.comments.count).to eq(1)
  #   #   end
  #   # end
  #
  #   describe "kom1 and kom2" do
  #     it " " do
  #       subject.comments = @array
  #       expect(subject.comments.count ==2).to be_truthy
  #     end
  #   end
  #
  # end
  #
  # describe "Title and text" do
  #   it "is valid with valid attributes" do
  #     expect(subject).to be_valid
  #   end
  # end
  #
  # describe "title" do
  #   it "is not valid without a title" do
  #     subject.title = nil
  #     expect(subject).to_not be_valid
  #   end
  #   it "is not valid with shortest of 5 characters" do
  #     subject.title = 'abc'
  #     expect(subject).to_not be_valid
  #   end
  #   it "is valid" do
  #     subject.title = "naslov"
  #     expect(subject.title).to eq("naslov")
  #   end
  # end
  #
  # describe "text" do
  #   it "is not valid without a text" do
  #     subject.text = nil
  #     expect(subject).to_not be_valid
  #   end
  # end

end




