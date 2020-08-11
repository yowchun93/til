# Testing race conditions using threads

There are times where in your application you are only.
This is a sample for making a booking, in which both tries to book for the same place
Assertion makes sure that only 1 reservation is made

```ruby
  form1 = Reservation::SpotBooking::CreateForm.new(count: 1, reserved_spots: '1')
  form2 = Reservation::SpotBooking::CreateForm.new(count: 1, reserved_spots: '1')

  attributes = [
    {
      form: form1,
      credit: credit,
      user: user
    },
    {
      form: form2,
      credit: credit2,
      user: user2
    }
  ]

  threads = attributes.map do |attrs|
      Thread.new do
        true while wait_for_all_threads
        Reservation::Operations::SpotBooking::CreateSpotBooking.call(
          form: attrs[:form],
          deducted_credit: attrs[:credit],
          reservation_counter: reservation_counter,
          user: attrs[:user]
        )
      end
    end
    wait_for_all_threads = false
    threads.each(&:join)

    expect(reservation_counter.reservations.count).to eq(1)
```

See
https://blog.arkency.com/2015/09/testing-race-conditions/
