class Account < ActiveRecord::Base
  has_many :account_histories, dependent: :destroy

  # validates  :customer_id, presence: true
  validates :account_number, presence: true, length: { minimum: 10 }
  validates  :price, presence: true
end
