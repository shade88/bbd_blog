# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  #factory :blog_message do
  #  text Faker::Lorem.paragraphs
  #end


  factory :blog_message do
    user factory: :user
    text Faker::Lorem.paragraphs
    rating 0

    factory :author_blog_message do
      user factory: :author
    end

    factory :invalid_message do
      text nil
    end
  end


  #factory :comment do
  #  commenter
  #  # instead of
  #  # association :commenter, factory: :user
  #  body "Great article!"
  #end
end


