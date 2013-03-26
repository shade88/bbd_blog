class User < ActiveRecord::Base
  ROLES = %w[admin moderator author banned]
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :activatable       :confirmable,
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :role
  #attr_accessible :email, :is_admin, :name, :password
  has_many :blog_messages
  has_many :comments

  has_private_messages

  def is?(role)
    self.role==role.to_s
  end
end
