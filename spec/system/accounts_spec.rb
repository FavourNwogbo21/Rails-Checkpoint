require 'rails_helper'

RSpec.describe "Accounts", type: :system do
  before do
    driven_by(:rack_test)
  end

  it "creates a new account" do
    visit "/"
    expect(page).to have_content "BankTrack"
    click_on "Get Started" 
    expect(page).to have_content "Accounts"
  end

end
