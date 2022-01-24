And(/^the user clicks the (.*)$/) do |click_element|
  @current_page.send(click_element.tr(' ', '_').downcase + '_element').click
end

And(/^the user fills the (.*) page with (.*)$/) do |page_name, data_key|
  page_name = page_name.split(" ").collect { |a| a.downcase }.join("_") + "_page_data.yml"
  data_key = data_key.split(" ").collect { |a| a.downcase }.join("_")
  load_file = get_data_from_yml_file(page_name)
  data_keys = get_data_keys_from_yml_file(load_file, data_key)
  data_hash = get_matched_data_key(load_file, data_keys)
  @current_page.fill_form_fields_with(data_hash)
end

And(/^the user clicks on edit button of (.*) user$/) do |user|
  table = @browser.table
  table.each do |row|
    row.tds.each do |cell|
      if cell.text.include? user
        row.td(index: 10).click
        break
      end
    end
  end
end