# gsub accepts a second argument which accepts a hash
new_tags = {
  "{{class_details}}" => "{{class.details}}",
  "{{order_details}}" => "{{order.details}}",
  "{{reservation_button}}" => "{{waitlist.reservation_button}}",
  "{{reservation_details}}" => "{{reservation.details}}"
}

"hello {{class_details}} {{order_details}} {{reservation_button}} {{reservation_details}}".gsub(/{{\s*[\w\_]+\s*}}/, new_tags)
# =>
"hello {{class.details}} {{order.details}} {{waitlist.reservation_button}} {{reservation.details}}"