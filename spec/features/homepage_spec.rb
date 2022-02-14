feature 'homepage' do
  scenario 'tests index.erb works' do
    visit('/')
    expect(page).to have_content "TESTING Hello World!"
  end
end