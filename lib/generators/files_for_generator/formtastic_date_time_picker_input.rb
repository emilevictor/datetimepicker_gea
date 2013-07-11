#This input file serves as the custom input for any formtastic forms that may or may not exist in the host application.

class FormtasticDateTimePickerInput < Formtastic::Inputs::StringInput

  def to_html
    input_wrapping do
      
      options[:label] = {:for => input_html_options[:id],
                          :class => "control-label"}

      '<div class="text control-group">'.html_safe <<
      (render_label? ? builder.label(input_name, label_text, label_from_options) : "") <<
      '<div class="controls">'.html_safe <<
      before_dtp_html <<
      builder.text_field(method, input_html_options) <<
      after_dtp_html <<
      js_because_of_jquery_requirements <<
      "</div></div>".html_safe
    end
  end

  protected

  #The HTML code for a datetimepicker (before) the input.
  def before_dtp_html
    attribute_id = (input_name.to_s + "_id")
    html = '<div id="'+attribute_id+'" class="input-append date datetimepicker_gea">'
    html.html_safe
  end

  def after_dtp_html

    html = "<span class=\"add-on\">"
    html << "<i data-time-icon=\"icon-time\" data-date-icon=\"icon-calendar\">"
    html << "</i>" << "</span>" << "</div>"
    html.html_safe
  end

  def js_because_of_jquery_requirements
    attribute_id = (input_name.to_s + "_id")
    html = '<script type="text/javascript">'

    html << "$(function() { $('.datetimepicker_gea').datetimepicker({language: 'en-AU'});});"

    html << "</script>"
    html.html_safe
  end
end