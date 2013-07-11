datetimepicker_gea
==================

A Ruby on Rails gem for the use of a Ruby on Rails date and time picker in simple_form, formtastic and the standard form helper.

## Usage


Put the following in your gemfile.

```ruby
gem 'datetimepicker_gea', :git => "git@github.com:emilevictor/datetimepicker_gea.git"
```

Run ```bundle install```


Run the datetimepicker_gea generator:

```
rails generate dtp
```

This will install the required files into their required locations.

Include the following in your application.js file:


```
//= require bootstrap-datetimepicker
//= require datetimepicker_gea
```