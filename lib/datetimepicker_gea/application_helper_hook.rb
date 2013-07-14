require_dependency 'application'

#Provide the form helper in application_helper.rb
ApplicationHelper.class_eval do

  #Inserts a datetimepicker with some options into a view.
  def date_time_picker(name_of_form_element,id_of_form_element,default_value="",date_format="dd/MM/yyyy hh:mm:ss",style="display:block;")

    raise "Name of form element not provided" if !name_of_form_element
    raise "Id of Form element not provided" if !id_of_form_element

    html = "<div id=\""+id_of_form_element+"\" class=\"input-append date datetimepicker_gea\" style=\""+style+"\">"
    html += "<input data-format=\""+date_format+"\" name=\""+name_of_form_element+"\" value=\""+default_value+"\" type=\"text\"></input>"
    html += "<span class=\"add-on\">"
    html += "<i data-time-icon=\"icon-time\" data-date-icon=\"icon-calendar\">"
    html += "</i>"
    html += "</span>"
    html += "</div>"

    html.html_safe

  end

end
