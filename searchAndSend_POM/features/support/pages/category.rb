class CategoryPage
  include PageObject
  
  div(:category_list, :id => 'searchOptions')
  select(:radio_button, :type=> 'radio')
  
  def verify_radio_button
   
    is_category = category_list?
    is_radio_button = radio_button?
    
    if is_category.eql?('true')
      breakpoint
    end
    
  end

end

