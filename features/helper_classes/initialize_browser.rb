require_relative '../helper_classes/web_helper.rb'

class InitializeBrowser

  attr_accessor :browser,
                :current_page

  def initialize
    self.create_browser
  end

  # Initialises the browser
  def create_browser
    case environment_browser_type.downcase
    when 'ie'
      @browser = Watir::Browser.new :ie
    when 'edge'
      @browser = Watir::Browser.new :edge
    when 'chrome'
      @browser = Watir::Browser.new :chrome
    when 'firefox'
      @browser = Watir::Browser.new :firefox
    when 'safari'
      @browser= Watir::Browser.new :safari
    else
      raise 'Browser type not recognized.'
    end
  end

end
