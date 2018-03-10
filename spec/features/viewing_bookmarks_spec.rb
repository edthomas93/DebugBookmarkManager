feature 'Viewing Bookmarks' do
  scenario 'Visiting /bookmarks shows me all the bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content('http://makersacademy.com')
    expect(page).to have_content('http://destroyallsoftware.com')
    expect(page).to have_content('http://google.com')
  end
end