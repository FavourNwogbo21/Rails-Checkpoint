class AddAccountToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_column :transactions, :accountid, :integer
    add_index :transactions, :accountid
  end
end
