RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controller
end

#@user_role role of user
def sign_in_user(user)
  #user=FactoryGirl.create(user_role.to_sym)
  visit sign_in_path
  fill_in "Email", with: user.email.upcase
  fill_in "user_password", with: user.password
end