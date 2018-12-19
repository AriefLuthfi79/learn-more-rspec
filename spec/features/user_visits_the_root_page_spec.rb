require 'rails_helper'

RSpec.feature "User visits the homepage" do
  scenario "succesfully" do
    sign_in_as create(:user)
    expect(page).to have_css 'h1', text: "Todos"
  end
end
