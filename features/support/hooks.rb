Before do
  $start_time = Time.now

  @initialize_browser = InitializeBrowser.new
  @browser = @initialize_browser.browser

end

After do
  $end_time = Time.now
end

