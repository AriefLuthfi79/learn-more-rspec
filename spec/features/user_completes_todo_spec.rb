require 'rails_helper'

RSpec.feature "User completes todo" do
  scenario "successfully" do
    sign_in_as create(:user)

    click_on "Add a new todo"
    fill_in "Title", with: "Build something bigger"
    click_on "Submit"

    click_on "Mark complete"
    expect(page).to display_completed_todo("Build something bigger")
  end
end
