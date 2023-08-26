require 'rails_helper'

RSpec.describe Account, type: :model do
  it "creates an account" do 
    account = Account.new(name: "Favour2", opening_balance: 400)
    expect(account.valid?).to eq(true)
  end
  it "validates opening balance" do 
    account = Account.new(name: "Favour2")
    expect(account.valid?).to eq(false)
  end
  it "rejects a string opening balance" do 
    account = Account.new(opening_balance: "favour")
    expect(account.valid?).to eq(false)
  end
end
