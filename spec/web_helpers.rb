def login_and_go
  visit '/'
  expect(page).to have_content "Hello there"
  expect(page).to have_content "What's your name"
  fill_in("name", with: "Alex")
  fill_in("birthday", with: "15-10-2018")
  click_button 'Go'
end
