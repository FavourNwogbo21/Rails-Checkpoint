class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.text :category
      t.date :date
      t.float :amount
      t.text :merchant
      t.float :end_balance

      t.timestamps
    end
  end
end
