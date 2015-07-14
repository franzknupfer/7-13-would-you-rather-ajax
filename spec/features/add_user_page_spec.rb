require 'rails_helper'

describe "the add question process" do
  it "will add a question", js: true do
    visit '/'
    click_on 'Sign Up'
    fill_in 'Email', :with => 'ian@ian.com'
    fill_in 'Password', :with => '12345678'
    fill_in 'Password confirmation', :with => '12345678'
    click_on 'Sign up'

    expect(page).to have_content 'Welcome! You have signed up successfully.'

  end
end
