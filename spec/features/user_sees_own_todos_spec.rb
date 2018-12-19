require 'rails_helper'

RSpec.feature "User sees own todos" do
  scenario "doesn't see others todo" do
    FactoryBot.create(:user, email: "arief1@gmail.com", password: "arief", password_confirmation: "arief")
    sign_in_as create(:user)
    expect(page).not_to display_todo "Buy milk"
  end
end
