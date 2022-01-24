require_relative '../pages/add_user_modal_dialogue_page.rb'
require_relative '../helper_classes/page_helper.rb'
require_relative '../helper_classes/initialize_browser.rb'
require_relative '../helper_classes/data_helper.rb'
include DataHelper
include PageHelper
include Webhelper

Given(/^the user navigates to the (.*) page$/) do |page_name|
  page_name = on(page_class_name_for(page_name)).page_url_value
  @browser.goto(page_name)
  verify_page_landing
end

And(/^the user user lands on the (.*) page$/) do |page_name|
  page_name = page_class_name_for(page_name)
  visit_page(page_name)
  verify_page_landing
end
