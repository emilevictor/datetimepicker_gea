$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "datetimepicker_gea/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "datetimepicker_gea"
  s.version     = DatetimepickerGea::VERSION
  s.authors     = ["Emile Victor"]
  s.email       = ["e@emilevictor.com"]
  s.homepage    = "http://www.gea-interactive.com.au/"
  s.summary     = "DateTimePicker_gea is a gem which simplifies the integration of datetimepicker into simple_form, formtastic and the default form."
  s.description = "Using three different methods, you can easily insert a rails datetimepicker into your project."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2"
  s.add_dependency "bootstrap-datetimepicker-rails"
  s.add_development_dependency "sqlite3"
end
