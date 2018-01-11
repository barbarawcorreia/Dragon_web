require "rails_helper"

# before { visit '/tamagoshis', click_buttom '/tamagoshis/new' }

describe 'bla' do
  context 'initial page' do
    it 'should permit users start the game, creating  the dragon' do
      visit '/tamagoshis'
      click_link (['/tamagoshis/new'])
      # expect('/tamagoshis/new').to have('')
      page.status_code.should eq(200)
    end
  end
end
