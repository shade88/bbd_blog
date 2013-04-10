class BlogMessage < ActiveRecord::Base
  validates_presence_of :text
  attr_accessible :image, :text, :user_id,:rating
  belongs_to :user
  has_many :comments, :dependent => :destroy
  def incr_rating
    self.rating+=1
  end
  def decr_rating
    self.rating-=1
  end
end
