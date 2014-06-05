require 'spec_helper'

feature 'CRUD favorite bikes' do
  scenario 'User can create a list of bikes' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a bike'
    fill_in 'Brand', with: 'Specialized'
    fill_in 'Color', with: 'Purple'
    click_on 'Add bike'
    expect(page).to have_content 'Specialized'
    expect(page).to have_content 'Purple'
  end
end