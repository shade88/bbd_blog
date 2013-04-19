# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user, aliases: [:author, :commenter] do
    email Faker::Internet.email
    password '123456'
    password_confirmation '123456'

    factory :invalid_user do
      password '123'
      password_confirmation '123'
    end
  end

  #factory :invalid_user, class: User do
  #  email Faker::Internet.email
  #  password '123'
  #  password_confirmation '123'
  #end
end
