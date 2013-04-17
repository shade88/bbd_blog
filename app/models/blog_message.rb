class BlogMessage < ActiveRecord::Base
  validates_presence_of :text
  attr_accessible :image, :text, :user_id,:rating
  belongs_to :user
  has_many :comments, :dependent => :destroy
  def incr_rating
    self.rating+=1                                   #не работает
    puts "comments.count "+comments.count.to_s  #работает
    puts "rating "+@rating.to_s                  #почему тут тоже работает?
  end
  def decr_rating
    self.rating-=1                              #работает
  end
end
