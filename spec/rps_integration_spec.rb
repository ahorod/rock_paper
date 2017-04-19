require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the title case path', {:type => :feature}) do
  it('processes player1 and player2 inputs') do
    visit('/')
    fill_in('player1', :with => 'r')
    fill_in('player2', :with => 'p')
    click_button('Submit')
    expect(page).to have_content('Player 2 Wins!')
  end
  it('processes player1 and player2 inputs') do
    visit('/')
    fill_in('player1', :with => 'r')
    fill_in('player2', :with => 's')
    click_button('Submit')
    expect(page).to have_content('Player 1 Wins!')
  end
  it('processes player1 and player2 inputs') do
    visit('/')
    fill_in('player1', :with => 'p')
    fill_in('player2', :with => 'p')
    click_button('Submit')
    expect(page).to have_content('Draw!')
  end
end
