class Comment < ActiveRecord::Base
  attr_accessible :blog_message_id, :text, :user_id
  belongs_to :user
  belongs_to :blog_message
end
