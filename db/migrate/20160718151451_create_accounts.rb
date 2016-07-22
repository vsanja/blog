class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :customer_id
      t.string :account_number
      t.integer :price

      t.timestamps null: false
    end
  end
end
