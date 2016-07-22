class Customer < ActiveRecord::Base
  has_one :account
  #has_one :account_history, through: :account

  # validates :name, length: { minimum: 10, maximum: 100 }, presence: true
   validates  :city, presence: true
  # validates :email, presence: true, uniqueness: true,
  #                     format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ }



  # # validates :name, :email,  presence: true
  # #
  # # validates :email, my_email_field: true


  include ActiveModel::Validations
  attr_accessor :name, :email

  validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
  validates :email, presence: true, email: true
end



