require 'rails_helper'

RSpec.describe SessionsHelper, type: :helper do
  include ActionView::Helpers

  before(:each) do
    @user = FactoryBot.create(:user)
  end
end
