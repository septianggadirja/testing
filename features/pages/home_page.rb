class HomePage < SitePrism::Page
  set_url ''

  element :btn_login, '#btn-login-register'
  element :btn_profile, 'dropdownMenuLink'
  element :btn_logout, :xpath, '//a[contains(text(),"Keluar")]'
  element :btn_hospital, :xpath, '//a[contains(text(),"Rumah Sakit")]'

end
