require 'spec_helper'

describe User do
  it 'should be a valid user' do
    FactoryGirl.build(:user).should be_valid
  end

  it 'should be an invalid user without email' do
    FactoryGirl.build(:user, email: nil).should_not be_valid
  end

end
