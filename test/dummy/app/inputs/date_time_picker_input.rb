class DateTimePickerInput < SimpleForm::Inputs::StringInput

  def input
    #Construct the datetimepicker around a text box with the right attribute name.
    out = ''
    date_format = input_html_options[:date_format] ? input_html_options.delete(:date_format) : "dd/MM/yyyy hh:mm:ss"
    default_value = input_html_options[:default_value] ? input_html_options.delete(:default_value) : ""
    in_modal = input_html_options[:in_modal] ? input_html_options.delete(:in_modal) : nil
    
    attribute_id = (attribute_name.to_s + "_id")

    input_html_options["data-format"] = date_format

    out << '<div id="'+attribute_id+'" class="input-append date datetimepicker_gea">'
    out << @builder.text_field(attribute_name, input_html_options)
    out << "<span class=\"add-on\">"
    out << "<i data-time-icon=\"icon-time\" data-date-icon=\"icon-calendar\">"
    out << "</i>"
    out << "</span>"
    out << "</div>"

    if in_modal
      out << '<script type="text/javascript">'
      out << "$(function() { $('.datetimepicker_gea').datetimepicker({language: 'en-AU'});});"
      out << "</script>"
    end

    out.html_safe
  end

end