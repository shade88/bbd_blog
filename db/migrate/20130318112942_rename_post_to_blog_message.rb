class RenamePostToBlogMessage < ActiveRecord::Migration
  def up
    rename_table :posts, :blog_messages
  end

  def down
    rename_table :blog_messages, :posts
  end
end
