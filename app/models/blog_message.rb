class BlogMessage < ActiveRecord::Base
  attr_accessible :image, :text, :user_id
  belongs_to :user
end
