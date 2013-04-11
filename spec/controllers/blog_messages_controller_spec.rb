require 'spec_helper'

describe BlogMessagesController do
  #before(:each) do
  #  #sign_in FactoryGirl.create(:user)
  #end
  #it "creates a new message" do
  #  BlogMessage.should_receive(:new).with("text" => "a quick brown fox","user_id"=>"1")
  #  post :create, :blog_message => { "text" => "a quick brown fox",user_id:1}
  #end
  #
  #it "redirects to the Messages index" do
  #  post :create
  #  response.should redirect_to(blog_messages_path)
  #end

  describe "POST #create" do
    context "with valid attributes" do
      it "creates a new contact" do
        expect{
          post :create, blog_message: FactoryGirl.attributes_for(:blog_message)
        }.to change(BlogMessage,:count).by(1)
      end
      it "saves the new contact in the database"
      it "redirects to the home page"
    end

    context "with invalid attributes" do
      it "does not save the new contact in the database"
      it "re-renders the :new template"
    end
  end

end
