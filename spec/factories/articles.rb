FactoryGirl.define do
  factory :article do
    sequence(:title) { |n| "Article #{n}" }
    text 'Article text'
  end
end