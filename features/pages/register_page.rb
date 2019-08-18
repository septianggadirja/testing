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
  element :dropdown_september, :xpath, '//option[contains(text(),"Sep")]'
  element :field_bod_year, '#bod-tahun'
  element :btn_next, '.fa-chevron-circle-right'
  element :error_message_name, '#register-name-error'
  element :error_message_email, '#register-email-error'
  element :error_message_password, '#register-password-error'
  element :popup_message_title, '#swal2-title'
  element :popup_message_content, '#swal2-content'
  element :btn_profile_option, '.btn-outline-light'
  element :btn_close_popup, :xpath, '//button[contains(text(),"OK")]'
  element :btn_finish_register, '#btnRegister'

  def submit_credential
    current_time = (Time.new).strftime('%d%m%Y_%H%M%S')
    sleep 2
    wait_until_field_name_visible
    field_name.click.set 'New_' + current_time
    field_email.set 'New_' + current_time + '@gmail.com'
    field_password.set 'b3lajarsehatq'
  end

  def submit_dob
    field_bod_day.click
    dropdown_date_option[15].click
    field_bod_month.click
    dropdown_september.click
    field_bod_year.set '1994'
  end

  def submit_personality_1(args = {})
    btn_profile_option(text: (args[:hoby1])).click if args.key?(:hoby1)
    btn_profile_option(text: (args[:hoby2])).click if args.key?(:hoby2)
    btn_profile_option(text: (args[:hoby3])).click if args.key?(:hoby3)
    btn_profile_option(text: (args[:hoby4])).click if args.key?(:hoby4)
  end
end
