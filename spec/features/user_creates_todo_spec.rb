require 'rails_helper'

RSpec.feature "User creates new todo" do
  scenario "successfully" do
    visit root_path

    click_on "Add a new todo"
    fill_in "Title", with: "Beli nasi kuning"
    click_on "Submit"

    expect(page).to have_css '.todos li', text: "Beli nasi kuning"
  end
end
