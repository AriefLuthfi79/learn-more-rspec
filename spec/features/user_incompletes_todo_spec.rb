require 'rails_helper'

RSpec.feature "User incompletes todos" do
  scenario "successfully" do
    sign_in_as create(:user)

    click_on "Add a new todo"
    fill_in "Title", with: "Build something bigger"
    click_on "Submit"

    click_on "Mark complete"
    click_on "Mark incomplete"

    expect(page).not_to display_completed_todo "Build something bigger"
    expect(page).to display_todo "Build something bigger"
  end
end
