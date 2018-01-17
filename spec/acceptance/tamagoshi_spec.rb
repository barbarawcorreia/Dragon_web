require "rails_helper"

context 'first page' do
  it 'should allow users go to create page' do
    visit '/tamagoshis'
    click_button('CREATE YOUR BABY DRAGON')
    page.has_field?('tamagoshi[name]')
    page.has_field?('tamagoshi[owner_name]')
    page.has_button?('Create Tamagoshi')
  end
end

context 'second page' do
  it 'should allow users to fill in the blanks and start the game' do
    visit '/tamagoshis'
    click_button('CREATE YOUR BABY DRAGON')
    fill_in('tamagoshi[name]', :with => 'Dollynho')
    fill_in('tamagoshi[owner_name]', :with => 'Dollynho Owner')
    click_button('Create Tamagoshi')
  end
end

context 'Test if this page has text' do
  it 'should allow users to fill in the blanks and start the game' do
    visit '/tamagoshis'
    click_button('CREATE YOUR BABY DRAGON')
    fill_in('tamagoshi[name]', :with => 'Dollynho')
    fill_in('tamagoshi[owner_name]', :with => 'Dollynho Owner')
    click_button('Create Tamagoshi')
    page.assert_text('Your Baby Dragon ...')
    click_link('START THE GAME')
    # binding.pry
    # click_link('SHOW ALL BABY DRAGONS')
  end

end