class AddRatingToBlogmessages < ActiveRecord::Migration
  def change
    add_column :blog_messages, :rating, :integer, default: 0
  end
end
