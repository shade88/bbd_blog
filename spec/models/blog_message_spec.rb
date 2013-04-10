require 'spec_helper'

describe BlogMessage do
  it 'should have text' do
    FactoryGirl.create(:blog_message).should be_valid
  end
  it 'is invalid without text' do
    FactoryGirl.create(:blog_message,text:nil).should_not be_valid
  end
end
