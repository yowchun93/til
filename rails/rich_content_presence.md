# Checking if rich content is empty in Rails

```ruby
  ActionView::Base.full_sanitizer.sanitize("<br> </br>")
  # " "

  ActionView::Base.full_sanitizer.sanitize("<br>hello</br>")
  # "hello"
```