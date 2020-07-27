# Rending outside of Rails Controllers

Rendering outside of the controller can be very convenient
especially when the the logic for rendering resides in your models folder.


```ruby
> ActionController::Base.new.render_to_string(
    template: 'mailers/preview.html.erb',
    locals: {
      template: template,
      account: @account,
      client: @user,
      reservation: preview_reservation,
      cart: CartPresenter.new(preview_order.cart),
      order: OrderPresenter.new(preview_order),
      reservation_counter: preview_reservation_counter
    },
    layout: 'layouts/mailer.html.erb'
  )
```

See the
[docs](https://api.rubyonrails.org/classes/ActionController/Renderer.html)
for more details.
