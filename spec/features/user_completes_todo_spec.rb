require 'rails_helper'

RSpec.feature "User completes todo" do
  scenario "successfully" do
    sign_in_as create(:user)

    create_todo "Build something bigger"
    click_on "Mark complete"
    expect(page).to display_completed_todo("Build something bigger")
  end
end
