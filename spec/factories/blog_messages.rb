# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  #factory :blog_message do
  #  text Faker::Lorem.paragraphs
  #end



  factory :blog_message do
    #user factory: :author
    text Faker::Lorem.paragraphs
    rating 0
  end

  factory :invalid_message do
    #user factory: :author
    text nil

  end

  #factory :comment do
  #  commenter
  #  # instead of
  #  # association :commenter, factory: :user
  #  body "Great article!"
  #end
end


