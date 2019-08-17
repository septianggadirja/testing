class LoginPage < SitePrism::Page
  set_url ''

  element :field_email, '#login-email'
  element :field_password, '#login-password'
  element :btn_login, '#btnLogin'
  element :error_message_email, '#login-email-error'
  element :error_message_password, '#login-password-error'
  element :popup_title, '#swal2-title'
  element :btn_close_popup, :xpath, '//button[contains(text(),"OK")]'

end
