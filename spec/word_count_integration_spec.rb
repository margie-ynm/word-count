require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the title case path', {:type => :feature}) do
  it('processes the user\'s entries and returns count for the targeted word\'s occurrence in string') do
    visit('/')
    fill_in('phrase', :with => 'Hello Ducks, welcome to introDUCKtion!')
    fill_in('target', :with => 'duck')
    click_button('Word count NOW!')
    expect(page).to have_content(2)
  end
end
