require 'rails_helper'

RSpec.feature "User destroy own todos" do
  let(:todo) { create(:todos, title: "Buy yellow rice") }

  scenario "successfully" do
    sign_in_as create(:user)

    click_on "Add a new todo"
    fill_in "Title", with: "Buy yellow rice"
    click_on "Submit"

    expect { click_on "Delete" }.to change(Todo, :count).by(-1) 
  end
end
