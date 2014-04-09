require 'spec_helper'

feature "the signin process" do
  scenario "signs me in" do
    visit '/users/new'
    fill_in 'Name', :with => 'User Testini'
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password1'
    fill_in 'Password_Confirmation', :with => 'password1'
    click_link 'Create User'
    expect(page).to have_content 'Thanks'
  end
end
