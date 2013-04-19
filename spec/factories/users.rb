# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user, aliases: [:commenter] do
    email Faker::Internet.email
    password '123456'
    password_confirmation '123456'

    factory :invalid_user do
      email Faker::Internet.email
      password '123'
      password_confirmation '123'
    end

    factory :author do
      email Faker::Internet.email
      role 'author'
    end

    factory :admin do
      email Faker::Internet.email
      role 'admin'
    end
  end

  #factory :invalid_user, class: User do
  #  email Faker::Internet.email
  #  password '123'
  #  password_confirmation '123'
  #end
end
