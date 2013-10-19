#This input file serves as the custom input for any formtastic forms that may or may not exist in the host application.

class FormtasticDateTimePickerInput < Formtastic::Inputs::StringInput

  def to_html
    input_wrapping do

      options[:label] = {:for => input_html_options[:id],
                         :class => "control-label"}

      in_modal = input_html_options["data-in-modal"] ? input_html_options.delete("data-in-modal") : nil
      close_javascript_support = input_html_options["data-close-js-support"] ? input_html_options.delete("data-close-js-support") : nil

      out = '<div class="text control-group">'
      out << (render_label? ? builder.label(input_name, label_text, label_from_options) : "")
      out << '<div class="controls">'
      out << before_dtp_html
      out << builder.text_field(method, input_html_options)
      out << after_dtp_html

      if in_modal || close_javascript_support
        out << js_because_of_jquery_requirements
      end

      out << "</div></div>"
      out.html_safe
    end
  end

  protected

    #The HTML code for a datetimepicker (before) the input.
    def before_dtp_html
      attribute_id = (input_name.to_s + "_id")
      html = '<div id="'+attribute_id+'" class="input-append date datetimepicker_gea">'
      html
    end

    def after_dtp_html

      html = "<span class=\"add-on\">"
      html << "<i data-time-icon=\"icon-time\" data-date-icon=\"icon-calendar\">"
      html << "</i>" << "</span>" << "</div>"
      html
    end

    def js_because_of_jquery_requirements
      attribute_id = (input_name.to_s + "_id")
      html = '<script type="text/javascript">'
      html << "$(function() { $('.datetimepicker_gea').datetimepicker({language: 'en-AU'});});"
      html << "</script>"
      html
    end
end
