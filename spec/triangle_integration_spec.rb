require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
describe('triangle', {:type => :feature}) do
  it('processes the user entry and returns what kind of triangle it is') do
    visit('/')
    fill_in('side1', :with => 2)
    fill_in('side2', :with => 3)
    fill_in('side3', :with => 3)
    click_button('submit')
    expect(page).to have_content('It is a triangle!')
  end
end
