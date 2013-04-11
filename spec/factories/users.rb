# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user, aliases: [:author, :commenter] do
    email Faker::Internet.email
    password '123456'
    password_confirmation '123456'
  end
end
