require 'spec_helper'

describe "Blog messages" do
  describe "Blog messages pages" do
    subject { page }
    let!(:blogMessage) { FactoryGirl.create(:blogMessage) }
    it  "As guest" do
       before(visit root_path)
      it{should has_content blogMessage.text[100] }
       it{should_not have_link 'edit',edit_blog_message_path(blogMessage) }
       it{should_not have_link 'delete',blog_message_path(blogMessage) }
       it{should_not have_link 'comment',blog_message_path(blogMessage)
       pending "will be doing later"}
    end
  end
end