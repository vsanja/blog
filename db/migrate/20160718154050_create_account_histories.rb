class CreateAccountHistories < ActiveRecord::Migration
  def change
    create_table :account_histories do |t|
      t.references :account, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
