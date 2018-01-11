require "rails_helper"

context 'initial page' do
  it 'should allow users to start the game, to create the dragon' do
    visit '/tamagoshis'
    click_button('CREATE YOUR BABY DRAGON')
    expect(page.status_code).to eq(200)
  end
end
