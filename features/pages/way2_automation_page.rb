class Way2AutomationPage

  include PageObject

  page_url('https://www.way2automation.com/angularjs-protractor/webtables/')
  button(:add_user, class: 'btn btn-link pull-right')

  def page_identifier_element
    "add_user_element"
  end

end