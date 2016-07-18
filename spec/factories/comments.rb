FactoryGirl.define do
  # factory :comment do
  #   commenter "komentator1"
  #   body "komentar1"
  # end
  #
  # factory :comment2, class:Comment do
  #   commenter "komentator2"
  #   body "komentar2"
  # end

  factory :comment do
    sequence(:commenter) { |n| "Commenter #{n}" }
    sequence(:body) { |n| "Body #{n}" }
  end
end
