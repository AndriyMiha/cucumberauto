Before do |scenario|
  def app
    @app ||= App::App.new(Driver.new)
  end
  app.start_driver
  
  puts "Running app: "
end

# after every scenario run if it was failed we will create a screenshot
# and embed it into the report.html
After do |scenario|
  app.driver_quit
end

# after every scenario run old screenshots will be removed
# in order to not load disc space
AfterConfiguration do
  FileUtils.rm_r("screenshots") if File.directory?("screenshots")
end
