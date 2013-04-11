require 'spec_helper'

describe BlogMessage do
  it 'should have text' do
    FactoryGirl.build(:blog_message).should be_valid
  end
  it 'is invalid without text' do
    FactoryGirl.build(:blog_message, text: nil).should_not be_valid
  end

  context 'rating' do
    before(:each) do
      @post=FactoryGirl.build(:blog_message)
    end
    it 'incr by 1' do
      expect{@post.incr_rating}.to change{@post.rating}.from(0).to(1)
    end
    it 'decr by 1' do
      expect{@post.decr_rating}.to change{@post.rating}.from(0).to(-1)
    end
  end
end
