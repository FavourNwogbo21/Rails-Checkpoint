class Account < ApplicationRecord
    has_many :transactions
    validates :opening_balance, numericality: true
end
