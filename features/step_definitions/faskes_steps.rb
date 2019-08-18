When('user is on faskes menu') do
  @pages.home_page.btn_hospital.click
  expect(current_url).to include('/faskes')
end

When('user search {string} in {string}') do |name, region|
  @pages.faskes_page.field_search_name.set name
  @pages.faskes_page.field_search_region.set region
  @pages.faskes_page.btn_search.click
  expect(current_url).to include('/cari-faskes?')
end

Then('user should not get any result') do
  expect(@pages.faskes_page).to have_dropdown_sorting
  expect(@pages.faskes_page.content_message).to have_text('Tidak ada data yang tersedia')
end

When('user choose faskes') do
  @pages.faskes_page.image_faskes[0].click
end

Then('user should on faskes detail page') do
  expect(@pages.faskes_page).to have_content_profile
end
