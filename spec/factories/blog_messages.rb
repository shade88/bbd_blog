# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  #factory :blog_message do
  #  text Faker::Lorem.paragraphs
  #end

  factory :user, aliases: [:author, :commenter] do
    email Faker::Internet.email
  end

  factory :blog_message do
    author
    text Faker::Lorem.paragraphs
  end

  #factory :comment do
  #  commenter
  #  # instead of
  #  # association :commenter, factory: :user
  #  body "Great article!"
  #end
end


