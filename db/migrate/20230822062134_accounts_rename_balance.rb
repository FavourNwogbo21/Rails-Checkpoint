class AccountsRenameBalance < ActiveRecord::Migration[7.0]
  def change
    rename_column :accounts, :opening_balance, :opening_balance
  end
end
