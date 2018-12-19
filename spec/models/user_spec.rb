require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.create(:user) }

  context "associations" do
    it "should has many todo" do
      should have_many(:todos)
    end
  end
end
