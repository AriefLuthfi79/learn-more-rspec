require 'rails_helper'

RSpec.feature "User incompletes todos" do
  scenario "successfully" do
    sign_in_as create(:user)

    create_todo "Build something bigger"
    click_on "Mark complete"
    click_on "Mark incomplete"

    expect(page).not_to display_completed_todo "Build something bigger"
    expect(page).to display_todo "Build something bigger"
  end
end
