require 'spec_helper'

describe "Authorizations" do
  describe 'Sign up/registation' do
    it 'with valid attributes' do
      expect {
        @user=FactoryGirl.build(:user)
        visit '/sign_up'
        fill_in "Email", with: @user.email.upcase
        fill_in "user_password", with: @user.password
        fill_in "user_password_confirmation", with: @user.password
        click_button "Sign up"
        page.should have_selector 'h1', text: 'BBD Blog main'
      }.to change { User.count }.by(1)
    end

    it 'with invalid attributes' do
      expect {
        @user=FactoryGirl.build(:invalid_user)
        visit '/sign_up'
        fill_in "Email", with: @user.email.upcase
        fill_in "user_password", with: @user.password
        fill_in "user_password_confirmation", with: @user.password
        click_button "Sign up"
        should have_content "errors"
      }.to change { User.count }.by(0)
    end
  end

  describe 'Sign in' do
    let!(:user) { FactoryGirl.create(:user) }
    it 'with valid attributes' do
        visit sign_in_path
        fill_in "Email", with: user.email.upcase
        fill_in "user_password", with: user.password
        click_button "Sign in"
        it { should redirect_to root_path }
    end
    it 'with invalid attributes' do
      visit sign_in_path
      fill_in "Email", with: user.email.upcase
      fill_in "user_password", with: user.password+'1'
      click_button "Sign in"
      it { should has_content "invalid" }
    end
  end

  end
