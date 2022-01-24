module PageHelper

  def page_class_name_for(page_name)
    Kernel.const_get(page_name.split(" ").collect { |a| a.capitalize }.join("") + "Page")
  end

  def verify_page_landing
    page_identifier_element = @current_page.page_identifier_element
    expect(@current_page.send(page_identifier_element).exists?).to be true
  end

end



