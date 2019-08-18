class FaskesPage < SitePrism::Page
  set_url '/faskes'

  element :field_search_name, '#keyword'
  element :field_search_region, '#region'
  element :btn_search, :xpath, '//button[@type="submit"]'
  element :dropdown_sorting, '.dropdown-toggle'
  elements :brpdown_option, '.dropdown-menu li'
  elements :image_faskes, '.img-wrapper'
  element :content_message, '.help-block'
  element :content_profile, '#profil'
end
