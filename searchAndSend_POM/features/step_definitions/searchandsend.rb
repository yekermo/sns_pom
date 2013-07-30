Given(/^I am on POS simulator page$/) do
  visit(HomePage)
  @load_value_yml = on(HomePage).loading_yml_file
end

When(/^I search for the "(.*?)"$/) do |search_term|
   on(HomePage).enter_keyword(@load_value_yml, search_term)
end

Then(/^I should see page title "(.*?)"$/) do |expected_title|
  on(ResultSetPage).check_page_title(expected_title)
end

Then(/^I should see "(.*?)"$/) do |expected_message|
  on(ResultSetPage).text.should include expected_message
  # on(Result::ResultSetPage).is_result_text(@load_value_yml, result_text)
end

Then(/^I should see instructional text "(.*?)"$/) do |expected_message|
  on(ResultSetPage).text.should include expected_message
   # on(ResultSetPage).is_result_text(@load_value_yml, expected_message)
end

Then(/^I should see the T keys with following states:$/) do |table|
  table.hashes.each do |tkeys|
    on(ResultSetPage).checktKey_no(tkeys['T key'], tkeys['Active'])
  end
end

Then(/^I should be redirected to PDP page$/) do 
  on(ProductDetailPage).text.should include 'Find Merchandise - Size/Color Options'
end 

When(/^I click on "(.*?)"$/) do |arg1| 
  on(ProductDetailPage).product_detail_view
end 

Then(/^I should see top left thumbnail selected by default$/) do 
  
end 

When(/^I press the "(.*?)" arrow key "(.*?)" time$/) do |arg1, arg2| 
 
end 

Then(/^I should see selected thumbnail notated by a yellow background and red border in PDP page$/) do 
  
end 

Then(/^I should see large picture at left matches the selected thumbnail at right$/) do 
  
end 

Then(/^I should see "(.*?)" Tkey inactive status$/) do |arg1| 
  
end 

Then(/^I should see "(.*?)" Tkey active status$/) do |arg1| 
  
  
end 