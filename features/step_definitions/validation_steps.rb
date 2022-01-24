And(/^the user validates that (.*) has been added to the table$/) do |data_key|
   page_name = @current_page.class.to_s
   data_file_name = page_name.scan(/[A-Z][a-z]+/).join("_").downcase + '_data.yml'
   matched_data_key = data_key.split(' ').join("_").downcase
   load_file = get_data_from_yml_file(data_file_name)
   data_keys = get_data_keys_from_yml_file(load_file,matched_data_key)
   data_key = get_matched_data_key(load_file, data_keys)
   data_values = get_matched_values(data_key)
   expect((@browser.table.text.split(' ') & data_values).size).to eq(5)
end

And(/^the user validates (.*) user has been deleted from the table$/) do |user|
   expect(@browser.table.text).to_not include(user)
end

