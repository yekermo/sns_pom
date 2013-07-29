# encoding: utf-8

Given(/^I am on POS simulator page$/) do
  visit(SearchKeyword::HomePage)
  @load_value_yml = on(SearchKeyword::HomePage).loading_yml_file
end

When(/^I search for the "(.*?)"$/) do |search_term|
  on(SearchKeyword::HomePage).enter_keyword(@load_value_yml, search_term)
end

Then(/^I should see page title "(.*?)"$/) do |page_title|
  on(Result::ResultSetPage).check_page_title(page_title)
end

Then(/^I should see "(.*?)"$/) do |result_text|
  on(Result::ResultSetPage).is_result_text(@load_value_yml, result_text)

end

Then(/^I should see instructional text "(.*?)"$/) do |instructional_message|
  on(Result::ResultSetPage).is_result_text(@load_value_yml, instructional_message)
end

Then(/^I should see the T keys with following states:$/) do |table|
    table.hashes.each do |tkeys|
    on(Result::ResultSetPage).checktKey_no(tkeys['T key'], tkeys['Active'])
    end
end

When(/^I click on "(.*?)"$/) do |tkey|
on(Result::ResultSetPage).click_tkey(@load_value_yml[tkey])
end

Then(/^I should see list of filters listed$/) do
 sleep 4
  
end

Then(/^I should see first one as "(.*?)" with "(.*?)" outline and "(.*?)" background$/) do |arg1, arg2, arg3|
 
 
end

When(/^I press the "(.*?)" arrow key "(.*?)" time$/) do |arg1, arg2|
 
 
end
  
Then(/^I should see second filter selected with "(.*?)" outline and "(.*?)" background$/) do |arg1, arg2|


end

Then(/^I should move one level up with "(.*?)" outline and "(.*?)" background$/) do |arg1,arg2|


end

When(/^I should see the list of other filter categories with preceded by a radio button$/) do

on(CategoryPage).verify_radio_button

end

When(/^I press "(.*?)"$/) do |arg1|


end