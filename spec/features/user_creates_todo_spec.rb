require 'rails_helper'

RSpec.feature "User creates new todo" do
  scenario "successfully" do
    sign_in_as create(:user)

    click_on "Add a new todo"
    fill_in "Title", with: "Beli nasi kuning"
    click_on "Submit"

    expect(page).to display_todo("Beli nasi kuning")
  end
end
