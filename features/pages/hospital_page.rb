class HospitalPage < SitePrism::Page
  set_url '/faskes'

  element :field_search_name, '#keyword'
  element :field_search_region, '#region'
  element :btn_search, :xpath, '//button[@type="submit"]'
end
