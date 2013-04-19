require 'spec_helper'

describe "Blog messages" do
  describe "Blog messages pages" do
    subject { page }
    before{visit root_path}

    context "As guest" do
      let!(:blog_message) { FactoryGirl.create(:blog_message) }
      it { should have_content blog_message.text[100] }
      it { should_not have_link 'edit', edit_blog_message_path(blog_message) }
      it { should_not have_link 'delete', blog_message_path(blog_message) }
      it { should_not have_link 'comment', blog_message_path(blog_message)
      pending "will be doing later" }
    end

    context "As author" do
      before(:all){sign_in_user(:author)}
      let!(:blog_message) { FactoryGirl.create(:blog_message) }
      let!(:author_blog_message) { FactoryGirl.create(:author_blog_message) }
      context "Other message" do
        it { should have_content blog_message.text[100] }
        it { should_not have_link 'edit', edit_blog_message_path(blog_message) }
        it { should_not have_link 'delete', blog_message_path(blog_message) }
      end
      context "Author message" do
        it { should have_content author_blog_message.text[100] }
        it { should have_link 'edit', edit_blog_message_path(author_blog_message) }
        it { should have_link 'delete', blog_message_path(author_blog_message) }
      end
    end

    context "As admin" do
      before(:all){sign_in_user(:admin)}
      let!(:blog_message) { FactoryGirl.create(:blog_message) }
      let!(:author_blog_message) { FactoryGirl.create(:author_blog_message) }
      context "Other message" do
        it { should have_content blog_message.text[100] }
        it { should have_link 'edit', edit_blog_message_path(blog_message) }
        it { should have_link 'delete', blog_message_path(blog_message) }
      end
      context "Author message" do
        it { should have_content author_blog_message.text[100] }
        it { should have_link 'edit', edit_blog_message_path(author_blog_message) }
        it { should have_link 'delete', blog_message_path(author_blog_message) }
      end
    end
  end
end