class RegisterPage < SitePrism::Page
  set_url ''

  element :btn_register, '#showModalRegistration'
  element :field_name, '#register-name'
  element :field_email, '#register-email'
  element :field_password, '#register-password'
  element :btn_male, :xpath, '//span[text()="Pria"]'
  element :btn_female, :xpath, '//span[text()="Wanita"]'
  element :field_bod_day, '#bod-tanggal'
  element :field_bod_month, '#bod-bulan'
  elements :dropdown_date_option, :xpath, '//option'
  element :field_bod_year, '#bod-tahun'
  element :btn_next, '.fa-chevron-circle-right'
  element :popup_message, '#swal2-title'
  elements :btn_profile_option, '.btn-outline-light'
  element :btn_close_popup, :xpath, '//button[contains(text(),"OK")]'
  element :btn_finish_register, '#btnRegister'

end
