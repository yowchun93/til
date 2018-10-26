# Testing Enqueued Jobs 

Testing enqueud jobs can sometimes be tricky. Rails provides a handy helper method for checking out the set of enqueued jobs at any given time. 

enqueued_jobs provides a store for all the current enqueud jobs. 

Example 1: Say you are asserting certain MailerJob is being enqueued:

```ruby

 it "sends return booking emails" do 
  form.submit; 
  expect(enqueued_jobs.select { |job| job[:args][0] == "ParcelReturnMailer"}.map { |job| job[:args][1] }).to match_array([
    'booking_for_customer',
    'booking_for_agent'
  ])
end

```


Example 2: 

```
describe '#do_thing' do
  it 'enqueues a job to do a thing later' do
    Processor.do_thing(arg1, arg2)
    expect(enqueued_jobs.map { |job| job[:job] }).to match_array([
      LongProcessJob,
      SendEmailsJob
    ])
  end
end
```

October 9 2017, by YowChun
