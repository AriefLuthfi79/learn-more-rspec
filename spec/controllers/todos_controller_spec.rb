require 'rails_helper'

RSpec.describe TodosController, type: :controller do
  before(:each) do
    log_in_as(User.create(email: "arief@gmail.com", password: "arief", password_confirmation: "arief"))
  end

  describe "GET#index" do
    it "assigns @todos" do
      todo = current_user.todos.create(title: "Buy milk")
      get :index
      expect(assigns(:todos)).to eq([todo])
    end

    it "render the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
