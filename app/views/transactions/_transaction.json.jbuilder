json.extract! transaction, :id, :account_id, :category, :date, :amount, :merchant, :end_balance, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
