require 'rails_helper'

RSpec.feature "User destroy own todos" do
  let(:todo) { create(:todos, title: "Buy yellow rice") }

  scenario "successfully" do
    sign_in_as create(:user)

    create_todo "Beli nasi kuning"
    expect { click_on "Delete" }.to change(Todo, :count).by(-1) 
  end
end
