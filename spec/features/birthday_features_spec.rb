require 'date'

feature 'Birthday page' do
  scenario 'if today is my birthday, it should tell me' do
    visit('/')
    fill_in("name", with: "Alex")
    fill_in("birthday", with: Date.today.strftime('%Y-%m-%d'))
    click_button 'Go'
    expect(page).to have_content("It's your birthday.")
  end

  scenario 'if today is not my birthday, it should tell me' do
    visit('/')
    fill_in("name", with: "Alex")
    fill_in("birthday", with: "01-01-2010")
    click_button 'Go'
    expect(page).to have_content("Not yet")
  end
end
