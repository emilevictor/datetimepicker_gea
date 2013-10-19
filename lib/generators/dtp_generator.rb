class DtpGenerator < Rails::Generators::Base
  source_root File.expand_path("../../generators/files_for_generator",__FILE__)
  #When a generator is invoked,
  #each public method in the generator is executed sequentially in the order that it is defined.

  desc "This generator injects helper files for formtastic, simple_form and ActionView helpers for your forms."
  def add_formtastic_input
    copy_file "formtastic_date_time_picker_input.rb", "app/inputs/formtastic_date_time_picker_input.rb"
  end

  def add_simple_form_input
    copy_file "date_time_picker_input.rb", "app/inputs/date_time_picker_input.rb"
  end

  def add_js_file
    copy_file "datetimepicker_gea.js.coffee", "app/assets/javascripts/datetimepicker_gea.js.coffee"
  end

end
