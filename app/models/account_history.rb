class AccountHistory < ActiveRecord::Base
  belongs_to :account

  validates :account_id, presence: true, foreign_key: {with: Account}



  #
  # private
  #
  # def existing_account
  #   if account_id.present? && !Account.exists?(account_id)
  #     errors.add(:account_id, "is not foreign key")
  #   end
  # end

  # def foreign_key_for: Account
  #   return false if Account.find_by_foreign_key(self.foreign_key).nil?
  # end


  # # @return Boolean
  # def foreign_key_check(fk_id, relation = Account)
  #   relation.exists?(fk_id)
  # end
  #
  # foreign_key_check(2) # => true|false
  # Account.exists?(2)   # => true|false
  #
  #
  # Article.exists?(10)  # => true|false
  # foreign_key_check(10, Article)

  # def foreign_key_for: Account
  #   if !Account.where(foreign_key: self.foreign_key).exists? then
  #     errors.add(:foreign_key, 'A valid foreign_key is valid.')
  #   end
  # end


  # it { should belong_to(:account).class_name('AccountHistory').with_foreign_key('account_id') }
end