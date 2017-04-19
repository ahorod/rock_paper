require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the title case path', {:type => :feature}) do
  it('processes player1 and player2 inputs') do
    visit('/')
    fill_in('sentence', :with => 'hello rose')
    fill_in('word1', :with => 'rose')
    fill_in('word2', :with => 'peony')
    click_button('Replace')
    expect(page).to have_content('hello peony')
  end

end
