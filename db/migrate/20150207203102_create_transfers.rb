class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.integer :account_id
      t.integer :to_account
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
