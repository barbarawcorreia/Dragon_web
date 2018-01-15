require "rails_helper"

context 'initial page' do
  it 'should allow users go to create page' do
    visit '/tamagoshis'
    click_button('CREATE YOUR BABY DRAGON')
    # expect(page.status_code).to eq(200)
    #expectativa que apareça os fields

  end
end

context 'second page' do
  it 'should allow users to fill in the blanks and start the game' do
    visit '/tamagoshis'
    click_button('CREATE YOUR BABY DRAGON')
    fill_in('tamagoshi[name]', :with => 'Dollynho')
    fill_in('tamagoshi[owner_name]', :with => 'Dollynho Owner')
    click_button('Create Tamagoshi')
    # expect(page.status_code).to eq(200)
  end
end
