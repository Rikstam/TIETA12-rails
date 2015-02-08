class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :code
      t.string :name
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
