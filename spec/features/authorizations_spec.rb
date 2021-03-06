require 'spec_helper'

describe "Authorizations" do
  describe 'Sign up/registation' do
    before { visit '/sign_up' }
    context 'with valid attributes' do
      before {
        @user=FactoryGirl.build(:user)
        fill_in "Email", with: @user.email.upcase
        fill_in "user_password", with: @user.password
        fill_in "user_password_confirmation", with: @user.password
      }

      it { click_button "Sign up"
      page.should have_selector 'h1', text: 'BBD Blog main' #redirect to root_path
      }

      it { expect {
        click_button "Sign up"

      }.to change { User.count }.by(1) }
    end

    context 'with invalid attributes' do
      before {
        @user=FactoryGirl.build(:invalid_user)
        fill_in "Email", with: @user.email.upcase
        fill_in "user_password", with: @user.password
        fill_in "user_password_confirmation", with: @user.password
      }
      it { click_button "Sign up"
      page.should have_content "error" or have_content "errors" }
      it {
        expect {
          click_button "Sign up"
          page.should have_content "error" or have_content "errors"
        }.to change { User.count }.by(0) }
    end
  end

  describe 'Sign in' do
    let!(:user) { FactoryGirl.create(:user) }
    before { visit sign_in_path
    fill_in "Email", with: user.email.upcase }
    context 'with valid attributes' do
      it { fill_in "user_password", with: user.password
      click_button "Sign in"
      page.should have_selector 'h1', text: 'BBD Blog main' #redirect to root_path
      }
    end
    context 'with invalid attributes' do
      it { fill_in "user_password", with: user.password+'1'
      click_button "Sign in"
      should have_content "invalid" }
    end
  end

end
