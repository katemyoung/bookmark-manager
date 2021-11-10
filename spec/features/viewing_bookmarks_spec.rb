feature 'Can view a list of bookmarks' do
  scenario 'user can view a list of bookmarks' do
    populate_table
    visit '/bookmarks'
    expect(page).to have_content 'www.makersacademy.com'
  end
end