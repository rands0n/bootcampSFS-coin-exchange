require 'rails_helper'

RSpec.describe 'Exchange Home Process' do
  it 'exchange value' do
    visit '/'

    within '#exchange_form' do
      select 'EUR', from: 'currency'
      select 'USD', from: 'currency_destination'
      fill_in 'quantity', with: 10

      click_button 'CONVERTER'
    end

    expect(page).to have_content 'value'
  end
end