require 'datetimepicker_gea/view_helpers'

module DatetimepickerGea
  class Railtie < Rails::Railtie
    initializer "datetimepicker_gea.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end