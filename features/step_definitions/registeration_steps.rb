Given("user is on register page") do
  @pages.home_page.load
  @pages.home_page.btn_login.click
  @pages.register_page.wait_until_btn_register_visible
  @pages.register_page.btn_register.click
  expect(@pages.register_page).to have_field_name
end

When('user register with null data') do
  @pages.register_page.btn_next.click
end

Then('user should get error popup message') do
  @pages.register_page.wait_until_btn_close_popup_visible
  expect(@pages.register_page.popup_message_title).to have_text('Terjadi Kesalahan')
  expect(@pages.register_page).to have_btn_close_popup
  @pages.register_page.btn_close_popup.click
end

When('user register with dob data only') do
  @pages.register_page.submit_dob
  @pages.register_page.btn_next.click
end

Then('user should get error message for lack of data') do
  expect(@pages.register_page.error_message_name).to have_text('This field is required.')
  expect(@pages.register_page.error_message_email).to have_text('This field is required.')
  expect(@pages.register_page.error_message_password).to have_text('This field is required.')
end

When('user register with invalid data') do
  @pages.register_page.submit_dob
  @pages.register_page.wait_until_field_name_visible
  @pages.register_page.field_name. set 'a'
  @pages.register_page.field_email. set 'a'
  @pages.register_page.field_password. set 'a'
  @pages.register_page.btn_next.click
end

Then('user should get error message for invalid data') do
  expect(@pages.register_page.error_message_name).to have_text('Please enter at least 3 characters.')
  expect(@pages.register_page.error_message_email).to have_text('Please enter a valid email address.')
  expect(@pages.register_page.error_message_password).to have_text('Min. 6 chars combine letter and numeric')
end

When('user register with registered email account') do
  @pages.register_page.field_name. set 'ini test duplikat email'
  @pages.register_page.field_email. set 'testangga21@gmail.com'
  @pages.register_page.field_password. set 'qwe123'
  @pages.register_page.btn_next.click
end

When('user register without personality_1') do
  @pages.register_page.submit_credential
  @pages.register_page.submit_dob
  @pages.register_page.btn_next.click
  sleep 2
  @pages.register_page.btn_next.click
end

When('user choose {string} {string} {string} as personality_1') do |data1, data2, data3|
  @pages.register_page.submit_credential
  @pages.register_page.submit_dob
  @pages.register_page.btn_next.click
  @pages.register_page.btn_profile_option(text: data1).click
  @pages.register_page.btn_profile_option(text: data2).click
  @pages.register_page.btn_profile_option(text: data3).click
  @pages.register_page.btn_next.click
end

When('user choose {string} {string} {string} {string} as personality_1') do |data1, data2, data3, data4|
  @pages.register_page.submit_credential
  @pages.register_page.submit_dob
  @pages.register_page.btn_next.click
  @pages.register_page.btn_profile_option(text: data1).click
  @pages.register_page.btn_profile_option(text: data2).click
  @pages.register_page.btn_profile_option(text: data3).click
  @pages.register_page.btn_profile_option(text: data4).click
  @pages.register_page.btn_next.click
end

When('user register without personality_2') do
  expect(@pages.register_page).to have_btn_finish_register
  @pages.register_page.btn_finish_register.click
end

When('user choose {string} {string} as personality_2') do |data1, data2|
  @pages.register_page.btn_profile_option(text: data1).click
  @pages.register_page.btn_profile_option(text: data2).click
  @pages.register_page.btn_finish_register.click
end

When('user choose {string} {string} {string} as personality_2') do |data1, data2, data3|
  @pages.register_page.btn_profile_option(text: data1).click
  @pages.register_page.btn_profile_option(text: data2).click
  @pages.register_page.btn_profile_option(text: data3).click
  @pages.register_page.btn_finish_register.click
end

Then('user should success to register') do
  expect(@pages.home_page.btn_profile).to have_text 'Hi,'
end
