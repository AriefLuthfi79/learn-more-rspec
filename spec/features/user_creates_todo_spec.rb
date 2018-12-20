require 'rails_helper'

RSpec.feature "User creates new todo" do
  scenario "successfully" do
    sign_in_as create(:user)

    create_todo "Beli nasi kuning"
    expect(page).to display_todo("Beli nasi kuning")
  end
end
