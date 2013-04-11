require 'spec_helper'

describe BlogMessagesController do
  before(:each) do
    sign_in User.find(1)
  end
  it "creates a new message" do
    BlogMessage.should_receive(:new).with("text" => "a quick brown fox","user_id"=>"1")
    post :create, :blog_message => { "text" => "a quick brown fox",user_id:1}
  end

  it "redirects to the Messages index" do
    post :create
    response.should redirect_to(:action => "index")
  end

end
