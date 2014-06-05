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

  scenario 'User can update a bike' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a bike'
    fill_in 'Brand', with: 'Specialized'
    fill_in 'Color', with: 'Purple'
    click_on 'Add bike'
    expect(page).to have_content 'Specialized'
    expect(page).to have_content 'Purple'
    click_on 'Specialized'
    click_on 'Edit'
    fill_in 'Brand', with: 'Cannondale'
    fill_in 'Color', with: 'Black'
    click_on 'Update bike'
    expect(page).to have_content 'Cannondale'
    expect(page).to have_content 'Black'
    expect(page).to_not have_content 'Specialized'
    expect(page).to_not have_content 'Purple'
  end

  scenario 'User can delete a bike' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a bike'
    fill_in 'Brand', with: 'Specialized'
    fill_in 'Color', with: 'Purple'
    click_on 'Add bike'
    expect(page).to have_content 'Specialized'
    expect(page).to have_content 'Purple'
    click_on 'Specialized'
    click_on 'Delete bike'
    expect(page).to_not have_content 'Specialized'
    expect(page).to_not have_content 'Purple'
  end
end