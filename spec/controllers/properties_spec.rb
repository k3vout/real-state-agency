require 'rails_helper'

RSpec.describe 'Properties page', js: true, type: :system do
  describe 'should' do
    it 'display title' do
      visit '/properties'
      expect(page).to have_content('Properties')
    end

    it 'display Next Page link' do
      visit '/properties'
      expect(page).to have_link('Next Page')
    end

    it 'display 15 properties' do
      visit '/properties'
      expect(page).to have_selector('a > li', count: 15)
    end

    it 'display Previous Page from the second page on' do
      visit '/properties?property_id=1'
      expect(page).to_not have_link('Previous Page')
      visit '/properties?property_id=2'
      expect(page).to have_link('Previous Page')
      visit '/properties?property_id=3'
      expect(page).to have_link('Previous Page')
    end

    it 'display details of a property when click it' do
      visit '/properties?property_id=1'
      first('a > li').click
      expect(page).to have_content('Property details')
    end
  end
end

RSpec.describe 'Property details page', js: true, type: :system do
  describe 'should' do

    before do
      visit '/properties?property_id=1'
      first('a > li').click
    end

    it 'display Public ID' do
      expect(page).to have_content('Public ID:')
    end

    it 'display title' do
      expect(page).to have_content('Title:')
    end

    it 'display Description' do
      expect(page).to have_content('Description')
    end

    it 'display Property type' do
      expect(page).to have_content('Property type')
    end

    it 'display Location' do
      expect(page).to have_content('Location')
    end

    it 'display Name input' do
      expect(page).to have_field('Name')
    end

    it 'display Phone input' do
      expect(page).to have_field('Phone')
    end

    it 'display Email input' do
      expect(page).to have_field('Email')
    end

    it 'display Message input' do
      expect(page).to have_field('Message')
    end

    it 'display Add Lead button input' do
      expect(page).to have_button('Add Lead')
    end

    it 'display the same page after add a Lead' do
      url = URI.parse(current_url)
      fill_in 'Name', with: 'John Doe'
      fill_in 'Phone', with: '987654321'
      fill_in 'Email', with: 'johndoe@gmail.com'
      fill_in 'Message', with: 'I want to be a Lead.'
      click_button 'Add Lead'
      expect(page).to have_current_path(url)
    end
  end
end
