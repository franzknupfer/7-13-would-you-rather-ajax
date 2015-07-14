require 'rails_helper'

describe "the add question process" do
  it "will add a question", js: true do
    visit '/'
    click_on 'Sign Up'
    fill_in 'Email', :with => 'ian@ian.com'
    fill_in 'Password', :with => '12345678'
    fill_in 'Password confirmation', :with => '12345678'
    click_on 'Sign up'
    click_on 'Add a question'
    fill_in 'Add your question here.', :with => 'question title'
    fill_in 'Describe your question', :with => 'question title'
    fill_in 'Option 1', :with => 'option1'
    fill_in 'Option 2', :with => 'option2'
    click_on 'Submit question'
    click_on 'option1'
    expect(page).to have_content 'option1: 1'

  end
end
