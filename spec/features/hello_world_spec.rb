feature 'Test feature' do
  scenario 'Visiting the root says "Hello World"' do
    visit('/')
    expect(page).to have_content('Hello World')
  end
end