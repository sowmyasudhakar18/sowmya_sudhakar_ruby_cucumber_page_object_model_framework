module Webhelper

  # Returns browser type that needs to be used in the test
  def environment_browser_type
    ENV['browser_type'].nil? ? 'chrome' : ENV['browser_type']
  end
end