Given("user is on login page") do
  @pages.home_page.load
  @pages.home_page.btn_login.click
end

When('user login with null data') do
  @pages.login_page.wait_until_btn_login_visible
  sleep 2
  @pages.login_page.btn_login.click
  expect(@pages.login_page.error_message_email).to have_text('This field is required.')
  expect(@pages.login_page.error_message_password).to have_text('This field is required.')
end


When('user login with invalid_email data') do
  @pages.login_page.wait_until_field_email_visible
  @pages.login_page.field_email.set 'angga'
  @pages.login_page.btn_login.click
  expect(@pages.login_page.error_message_email).to have_text('Please enter a valid email address.')
  expect(@pages.login_page.error_message_password).to have_text('This field is required.')
end

When('user login with invalid_password data') do
  @pages.login_page.wait_until_field_email_visible
  @pages.login_page.field_email.set 'testangga21@gmail.com'
  @pages.login_page.field_password.set 'rahasia'
  @pages.login_page.btn_login.click
  expect(@pages.login_page.popup_title).to have_text('Terjadi Kesalahan')
  expect(@pages.login_page).to have_btn_close_popup
end

Then('user should still on login page') do
  expect(@pages.login_page).to have_btn_login
end

When('user login with {string} data') do |account|
  @user = LoginRequirenment.new.load_user(account)
  @pages.login_page.wait_until_field_email_visible
  @pages.login_page.field_email.set @user["email"]
  @pages.login_page.field_password.set @user["password"]
  p @user
  @pages.login_page.btn_login.click
end

Then('user should be redirected to home page') do
  expect(@pages.home_page.btn_profile).to have_text 'Hi,'
  sleep 5
end