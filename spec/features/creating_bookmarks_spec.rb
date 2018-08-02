feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit('/add-a-new-bookmark')
    fill_in('title', with: 'Test Bookmark')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')
    save_and_open_page
    expect(page).to have_link 'Test Bookmark'
  end
end
