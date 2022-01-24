class ConfirmationDialoguePage

  include PageObject

  button(:ok, text: 'OK')

  def page_identifier_element
    'ok_element'
  end
end