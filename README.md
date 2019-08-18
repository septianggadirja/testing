
### Sample gherkin template:
```gherkin
Feature: Title (one line describing the story)

Narrative Description: As a [role], I want [feature], so that I [benefit]

Scenario: Title (acceptance criteria of user story)
Given [context]
And [some more context]...
When [event]
Then [outcome]
And [another outcome]...

Scenario: ...
```

## Writing page object files
```ruby
    class Home < SitePrism::Page
      element :popup_title, '#swal2-title'
      element :btn_close_popup, :xpath, '//button[contains(text(),"OK")]'
    end
```
...then the following methods are available:
```
@home.search_field
@home.has_search_field?
@home.has_no_search_field?
@home.wait_for_search_field
@home.wait_for_no_search_field
@home.wait_until_search_field_visible
@home.wait_until_search_field_invisible
```
## Creating step definitions files
```ruby
Then /^the account page is displayed$/ do
  expect(@home_page).to be_displayed
  expect(@register_page).not_to be_displayed
  # or expecting spesific element
   expect(@account_page).to have_search_field 
end
# or we can check that all elements that should be on the page are on the page.
Then /^the friends page contains all the expected elements$/ do
  expect(@friends_page).to be_all_there
end
```
Matchers:
```
- expect(@account_page.current_url).to end_with('/accounts/22?token=ca2786616a4285bc')
- expect(@account_page).to be_displayed(id: 22)
- expect(@some_other_page).not_to be_displayed
- expect(@home).to have_no_search_field
```
