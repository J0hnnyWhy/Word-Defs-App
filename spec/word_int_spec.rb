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

# describe('path for new words', {:type => feature}) do
#   it('allows the user to input a new word') do
#     visit('/')
#     fill_in('name', :with => 'lup')
#     click_button('Add Word')
#     expect(page).to have_content('Word Definition')
#   end
# end
#
# describe('path for new definition of a word', {:type => feature}) do
#   it('allows the user to input a new word definition') do
#     visit('./def')
#     fill_in('def', :with => 'a small thing')
#     click_button('Add Definition')
#     expect(page).to have_content('a small thing')
#   end
# end
