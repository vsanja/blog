require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { should respond_to :id }
  it { should respond_to :article_id }
  it { should respond_to :commenter }
  it { should respond_to :body }

  # Relations
  it { should respond_to :article }

  describe 'validations' do
    subject { described_class.new(commenter: commenter, body: body, article_id: article.id) }
    let(:commenter) { 'John Doe' }
    let(:body) { 'Test Body' }
    let(:article) { create(:article) }

    it { should be_valid }

    context 'invalid commenter' do
      let(:commenter) { nil }
      it { should be_invalid }
    end

    context 'invalid body' do
      let(:body) { nil }
      it { should be_invalid }
    end

    context 'invalid article given' do
      subject { build(:comment, article_id: Article.count + 1) }
      it { should be_invalid }
    end
  end

  # subject { described_class.new(commenter: 'name', body: 'text') }
  # #let(:vanja){FactoryGirl.create(:article)}
  #
  # describe "Validations" do
  #
  #   describe "Commenter and body" do
  #     it "is valid with valid attributes" do
  #       expect(subject).to be_valid
  #     end
  #   end
  #
  #   describe "commenter" do
  #     it "is not valid without a commenter" do
  #       subject.commenter = nil
  #       expect(subject).to_not be_valid
  #     end
  #     it "is valid" do
  #       subject.commenter = "name"
  #       expect(subject.commenter).to eq("name")
  #     end
  #   end
  #
  #   describe "body" do
  #     it "is not valid without a body" do
  #       subject.body = nil
  #       expect(subject).to_not be_valid
  #     end
  #   end
  #
  #   # decribe 'Articles' do
  #   #   it 'must have article' do
  #   #     expect(subject).to be_valid
  #   #   end
  #   # end
  #
  #   # describe 'Articles must have title of minimum 5 characters' do
  #   #   subject.article = vanja
  #   #   expect(subject.article.title).to eq("vvvvggg")
  #   # end
  #
  # end
end