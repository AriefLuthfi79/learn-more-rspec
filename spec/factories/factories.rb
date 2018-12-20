FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { "arief" }
    password_confirmation { "arief" }

  end

  factory :todos, class: :Todo do
    user
    sequence(:title) { |n| "Buy #{n}" }
  end
end
