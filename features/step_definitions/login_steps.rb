Given("user is on login page") do
  @pages.home_page.load
  @pages.home_page.btn_login.click
  @pages.login_page.field_email.click.set 'QAmPRet'
  @pages.login_page.btn_login.click
  sleep 10
end