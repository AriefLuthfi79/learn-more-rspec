FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { "arief" }
    password_confirmation { "arief" }

  end

  factory :todos do
    user
    title { "Buy milk" }
  end
end
