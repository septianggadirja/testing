class LoginPage < SitePrism::Page
  set_url ''

  element :field_email, '#login-email'
  element :field_password, '#login-password'
  element :btn_login, '#btnLogin'
  element :error_message, '#login-email-error'
end
