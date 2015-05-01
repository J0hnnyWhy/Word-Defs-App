require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('path for index', {:type => :feature}) do
  it('shows the list of words and "add word" form') do
    visit('/')
    expect(page).to have_content('Word Definition')
  end
end
