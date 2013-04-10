# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  #factory :blog_message do
  #  text Faker::Lorem.paragraphs
  #end

  factory :user, aliases: [:author, :commenter] do
    email Faker::Internet.email
    password '123456'
    password_confirmation '123456'
  end

  factory :blog_message do
    user factory: :author
    text Faker::Lorem.paragraphs
  end

  #factory :comment do
  #  commenter
  #  # instead of
  #  # association :commenter, factory: :user
  #  body "Great article!"
  #end
end


