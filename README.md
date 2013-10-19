datetimepicker_gea
==================

A Ruby on Rails gem for the use of a Ruby on Rails date and time picker in simple_form, formtastic and the standard form helper.

## Dependency installation

First, you need to install the rails bootstrap datepicker gem. This gem automatically bundles it for you, but there is a limited about that you need to do for yourself, manually.

Add the following directive to your Javascript manifest file (`application.js`):

    //= require bootstrap-datetimepicker

If you want to include a localization file, also add the following directive:

    //= require locales/bootstrap-datetimepicker.<locale>

Add the following line to your stylesheet file (`bootstrap_and_overrides.scss`) :

```scss
@import 'bootstrap';
@import 'bootstrap-datetimepicker';
```

or if you're having problems (or using less) require it in your main stylesheet manifest file:

```scss
*= require bootstrap-datetimepicker
```

## Usage


Put the following in your gemfile.

```ruby
gem 'datetimepicker_gea'
```

Run ```bundle install```


Run the datetimepicker_gea generator:

```
rails generate dtp
```

This will install the required files into their required locations.

Include the following in your application.js file:


```
//= require datetimepicker_gea
```

### In your views

#### Simpleform:

```
  <%= f.input :task_due, :as => :date_time_picker, :input_html => {:in_modal => "true"} %>

```

#### Formtastic

```
      <%= f.input :quote_due, :as => :formtastic_date_time_picker, :input_html => {:value => @quote.quote_due.strftime("%d/%m/%Y"), "data-format" => "dd/MM/yyyy", "data-format" => "dd/MM/yyyy"} %>
```

#### Standard form

```
  <%= date_time_picker("start_date","start_date_time_picker",params[:start_date].to_s,"dd/MM/yyyy") %>

```