class AddUserModalDialoguePage
  include PageObject

  text_field(:first_name, name: 'FirstName')
  text_field(:last_name, name: 'LastName')
  text_field(:user_name, name: 'UserName')
  text_field(:password, name: 'Password')
  text_field(:email, name: 'Email')
  text_field(:cell_phone, name: 'Mobilephone')
  radio_button(:company_aaa, text: 'Company AAA')
  radio_button(:company_bbb, text: 'Company BBB')
  select_list(:role, name: 'RoleId')
  button(:save, text: 'Save')
  row(:data_row, xpath: "//table[@class = 'smart-table table table-striped']//tr")

  def page_identifier_element
    "first_name_element"
  end
end